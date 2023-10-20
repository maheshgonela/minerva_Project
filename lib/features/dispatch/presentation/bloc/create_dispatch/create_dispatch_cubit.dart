import 'package:base_auth/entity/id_name.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_info_wrapper.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_item_ui_model.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:injectable/injectable.dart';

part 'create_dispatch_cubit.freezed.dart';
part 'create_dispatch_state.dart';

@injectable
class CreateDispatchCubit extends Cubit<CreateDispatchState> {
  CreateDispatchCubit(this.repository) : super(_getInitState());

  static CreateDispatchState _getInitState({CreateDispatchState? state}) {
    return CreateDispatchState(
      dispatchOrders: state?.dispatchOrders ?? [],
      isLoading: false,
      isSuccess: false,
      errorMessage: '',
      section: state?.section ?? '',
      driver: '',
      shipmentId: '',
      sender: '',
      vehicleNumber: '',
    );
  }

  final DispatchRepository repository;

  dynamic setOrder(IdName shop, SalesOrder order) async {
    final dispatchOrders2 = [...state.dispatchOrders];
    final selectedOrder = dispatchOrders2
        .singleWhereOrNull((element) => element.order.id == order.id);

    if (selectedOrder == null) {
      dispatchOrders2.add(
        DispatchInfoWrapper(
          order: order,
          shop: shop,
          dispatchItems: [],
          allProducts: [],
          totalQty: 0.0,
        ),
      );
    }

    emit(state.copyWith(dispatchOrders: dispatchOrders2));
  }

  dynamic setOrderProductList(IdName shop, SalesOrder order,
      List<DispatchOrderedProduct> products) async {
    final dispatchOrders2 = [...state.dispatchOrders];
    final DispatchInfoWrapper? selectedOrder = dispatchOrders2
        .singleWhereOrNull((element) => element.order.id == order.id);

    if (selectedOrder != null) {
      dispatchOrders2
          .removeWhere((element) => element.order.id == selectedOrder.order.id);

      List<DispatchItemUiModel> items = [];

      for (int i = 0; i < products.length; i++) {
        final p = products[i];

        if (double.parse(p.dispatchQty) > 0) {
          final details = DispatchItemUiModel(
            product: p,
            isReceivedFull: p.dispatchQty == p.orderedQuantity,
            isReceivedPartial: p.dispatchQty != p.orderedQuantity,
            dispatchedQty: double.parse(p.dispatchQty),
          );

          items.add(details);
        }
      }

      final totalQty = items.fold(
          0.0,
          (double previousValue, element) =>
              previousValue + double.parse(element.product.dispatchQty));

      dispatchOrders2.add(selectedOrder.copyWith(
        allProducts: products,
        totalQty: totalQty,
        dispatchItems: items,
      ));
    }

    emit(state.copyWith(dispatchOrders: dispatchOrders2));
  }

  dynamic setSection(String section) async {
    emit(state.copyWith(section: section));
  }

  dynamic setDriver(String driver) async {
    emit(state.copyWith(driver: driver));
  }

  dynamic setSender(String sender) async {
    emit(state.copyWith(sender: sender));
  }

  dynamic setVehicleNumber(String vehicleNumber) async {
    emit(state.copyWith(vehicleNumber: vehicleNumber));
  }

  dynamic onProductStateChanged(
      SalesOrder order, DispatchItemUiModel details) async {
    final orders = [...state.dispatchOrders];

    var selectedOrder =
        orders.singleWhereOrNull((element) => element.order.id == order.id);
    if (selectedOrder == null) return;

    final product = selectedOrder.dispatchItems.singleWhereOrNull(
        (element) => element.product.id == details.product.id);

    if (details.dispatchedQty == 0.0 && product != null) {
      selectedOrder.dispatchItems
          .removeWhere((element) => element.product.id == details.product.id);
    } else if (product == null && details.dispatchedQty > 0.0) {
      selectedOrder.dispatchItems.add(details);
    } else if (product != null && details.dispatchedQty > 0.0) {
      selectedOrder.dispatchItems
          .removeWhere((element) => element.product.id == details.product.id);
      selectedOrder.dispatchItems.add(details);
    }

    print(details.dispatchedQty);

    selectedOrder.allProducts
        .removeWhere((element) => element.id == details.product.id);

    selectedOrder.allProducts.add(details.product.copyWith(
      dispatchQty: details.dispatchedQty.toString(),
    ));

    selectedOrder.allProducts.sortBy((element) => element.productName);

    selectedOrder =
        selectedOrder.copyWith(allProducts: selectedOrder.allProducts);

    final where = selectedOrder.allProducts
        .where((element) => element.id == details.product.id)
        .toList();

    if (where.isNotEmpty) {
      print(where[0].dispatchQty);
    }

    final totalQty = selectedOrder.dispatchItems.fold(
        0.0,
        (double previousValue, element) =>
            previousValue + element.dispatchedQty);

    print(totalQty);

    final dispatchInfoWrapper = selectedOrder.copyWith(totalQty: totalQty);

    orders.removeWhere(
        (element) => element.order.id == dispatchInfoWrapper.order.id);
    orders.add(dispatchInfoWrapper);

    emit(state.copyWith(dispatchOrders: orders));
  }

  dynamic resetState() async {
    emit(_getInitState(state: state));
  }

  dynamic saveDispatchItems(String orderId) async {
    final selectedOrder = state.dispatchOrders
        .singleWhereOrNull((element) => element.order.id == orderId);
    if (selectedOrder == null) return;
    await repository.saveDispatchQty(selectedOrder.dispatchItems);
  }

  dynamic saveDispatchQty(String productId, double dispatchQty) async {
    await repository.saveProductDispatchQty(productId, dispatchQty);
  }

  dynamic saveScannedDispatchQty(SalesOrder order, String productCode,
      String uniqueCode, String weight) async {
    emit(state.copyWith(errorMessage: ''));

    final orders = [...state.dispatchOrders];

    DispatchInfoWrapper? selectedOrder = orders.singleWhereOrNull((element) {
      final compareTo = element.order.id.compareTo(order.id);
      return compareTo == 0;
    });

    if (selectedOrder == null) return null;

    final originalProduct = selectedOrder.allProducts
        .singleWhereOrNull((element) => element.productCode == productCode);
    if (originalProduct == null) {
      emit(state.copyWith(errorMessage: 'Product not found'));
      return null;
    }

    final res = await repository.saveScannedProductDispatchQty(productCode,
        uniqueCode, weight, order.organization, order.businessPartner);

    final result = await res.fold(
      (l) async => false,
      (exists) async => exists,
    );

    if (result) {
      final d = double.parse(weight) / 1000.0;

      final DispatchItemUiModel? product = selectedOrder.dispatchItems
          .singleWhereOrNull(
              (element) => element.product.id == originalProduct.id);

      if (product == null) {
        await repository.saveProductDispatchQty(originalProduct.id, d);

        selectedOrder.allProducts
            .removeWhere((element) => element.id == originalProduct.id);
        selectedOrder.allProducts.add(originalProduct.copyWith(
          dispatchQty: d.toString(),
        ));

        selectedOrder.allProducts.sortBy((element) => element.productName);

        selectedOrder =
            selectedOrder.copyWith(allProducts: selectedOrder.allProducts);

        final isReceivedFull2 = d >= double.parse(originalProduct.dispatchQty);
        final details = DispatchItemUiModel(
          product: originalProduct,
          isReceivedFull: isReceivedFull2,
          isReceivedPartial: !isReceivedFull2,
          dispatchedQty: double.parse(weight) / 1000.0,
        );
        selectedOrder.dispatchItems.add(details);
      } else {
        final double scannedQty = double.parse(weight) / 1000.0;
        final double total = scannedQty + product.dispatchedQty;

        await repository.saveProductDispatchQty(originalProduct.id, total);

        selectedOrder.allProducts
            .removeWhere((element) => element.id == originalProduct.id);
        selectedOrder.allProducts.add(originalProduct.copyWith(
          dispatchQty: total.toString(),
        ));

        selectedOrder.allProducts.sortBy((element) => element.productName);

        selectedOrder =
            selectedOrder.copyWith(allProducts: selectedOrder.allProducts);

        final isReceivedFull2 =
            total >= double.parse(originalProduct.dispatchQty);
        final details = DispatchItemUiModel(
          product: originalProduct,
          isReceivedFull: isReceivedFull2,
          isReceivedPartial: !isReceivedFull2,
          dispatchedQty: total,
        );
        selectedOrder.dispatchItems
            .removeWhere((element) => element.product.id == originalProduct.id);
        selectedOrder.dispatchItems.add(details);
      }

      final totalQty = selectedOrder.dispatchItems.fold(
          0.0,
          (double previousValue, element) =>
              previousValue + element.dispatchedQty);

      final dispatchInfoWrapper = selectedOrder.copyWith(totalQty: totalQty);

      orders.removeWhere(
          (element) => element.order.id == dispatchInfoWrapper.order.id);
      orders.add(dispatchInfoWrapper);

      emit(state.copyWith(dispatchOrders: orders, errorMessage: ''));
    } else {
      emit(state.copyWith(errorMessage: 'Product already scanned'));
    }
  }

  dynamic createDispatch(String shopId) async {
    final List<DispatchInfoWrapper> orderInfo = state.dispatchOrders
        .where((element) => element.shop.id == shopId)
        .toList();

    if (orderInfo.isNotEmpty) {
      emit(state.copyWith(isLoading: true, isSuccess: false, errorMessage: ''));

      final result = await repository.createDispatch(
        orderInfo,
        state.section,
        state.driver,
        state.vehicleNumber,
        state.sender,
      );

      emit(
        result.fold(
          (l) => state.copyWith(
              isLoading: false, isSuccess: false, errorMessage: l.error),
          (r) {
            final newInfo = [...state.dispatchOrders];
            newInfo.removeWhere((element) => element.shop.id == shopId);

            final newList = orderInfo
                .map((e) => e.copyWith(dispatchItems: [], totalQty: 0.0))
                .toList();

            newInfo.addAll(newList);

            return state.copyWith(
              isLoading: false,
              isSuccess: true,
              errorMessage: '',
              dispatchOrders: newInfo,
              driver: '',
              shipmentId: r,
            );
          },
        ),
      );
    }
  }
}
