import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/grn/domain/entities/grn_item_ui_model.dart';
import 'package:minerva/features/grn/domain/entities/ordered_product.dart';
import 'package:minerva/features/grn/domain/entities/purchase_order.dart';
import 'package:minerva/features/grn/domain/repository/grn_repository.dart';
import 'package:injectable/injectable.dart';

part 'create_grn_cubit.freezed.dart';
part 'create_grn_state.dart';

@injectable
class CreateGrnCubit extends Cubit<CreateGrnState> {
  CreateGrnCubit(this.repository)
      : super(
          const CreateGrnState(
            order: null,
            grnProducts: [],
            isLoading: false,
            isSuccess: false,
            errorMessage: '',
          ),
        );

  final GRNRepository repository;

  dynamic setOrder(PurchaseOrder order) async {
    emit(state.copyWith(order: order));
  }

  dynamic setOrderProductList(List<OrderedProduct> products) async {
    final List<GrnItemUiModel> items = [];

    for (int i = 0; i < products.length; i++) {
      final p = products[i];

      if (double.parse(p.pendingQty) > 0) {
        final details = GrnItemUiModel(
          product: p,
          isReceivedFull: false,
          isReceivedPartial: false,
          receivedQty: 0,
        );

        items.add(details);
      }
    }

    emit(state.copyWith(grnProducts: items));
  }

  dynamic onProductStateChanged(GrnItemUiModel details) async {
    final products = [...state.grnProducts];
    final GrnItemUiModel? product = state.grnProducts.singleWhereOrNull(
        (element) => element.product.id == details.product.id);

    if (details.receivedQty == 0.0 && product != null) {
      products
          .removeWhere((element) => element.product.id == details.product.id);
      products.add(product.copyWith(
          receivedQty: 0,
          product: product.product.copyWith(selectedReceivedQty: '0')));
    } else if (product == null && details.receivedQty > 0.0) {
      products.add(details);
    } else if (product != null && details.receivedQty > 0.0) {
      products
          .removeWhere((element) => element.product.id == details.product.id);
      products.add(details.copyWith(
          product: product.product
              .copyWith(selectedReceivedQty: details.receivedQty.toString())));
    }

    emit(state.copyWith(grnProducts: products));
  }

  dynamic saveDispatchQty(String productId, double dispatchQty) async {
    await repository.saveProductDispatchQty(productId, dispatchQty);
  }

  dynamic saveScannedDispatchQty(
      String unqCode, String productCode, String qty) async {
    emit(state.copyWith(isLoading: false, isSuccess: false, errorMessage: ''));
    final scanned = await repository.checkProductValidity(unqCode, productCode);
    print(scanned);
    scanned.fold(
      (l) {
        emit(state.copyWith(
            isLoading: false,
            isSuccess: false,
            errorMessage: 'Product not found in dispatch scanned list'));
      },
      (r) {
        print(state.grnProducts.length);

        final List<GrnItemUiModel> p = state.grnProducts
            .where((element) => element.product.productCode == productCode)
            .toList();

        print(p);

        if (p.isEmpty) {
          emit(state.copyWith(
              isLoading: false,
              isSuccess: false,
              errorMessage: 'Product not found in dispatch scanned list'));
        } else {
          final receivedQty = p[0].receivedQty + (double.parse(qty) / 1000.0);

          saveDispatchQty(p[0].product.id, receivedQty);

          onProductStateChanged(p[0].copyWith(
              receivedQty: receivedQty,
              product: p[0]
                  .product
                  .copyWith(selectedReceivedQty: receivedQty.toString())));

          emit(state.copyWith(
              isLoading: false, isSuccess: false, errorMessage: ''));
        }
      },
    );
  }

  dynamic createGrn() async {
    emit(state.copyWith(isLoading: true, isSuccess: false, errorMessage: ''));
    print(state.order);
    print(state.grnProducts);
    final result = await repository.createGrn(state.order!, state.grnProducts);
    emit(result.fold(
      (l) => state.copyWith(
          isLoading: false, isSuccess: false, errorMessage: l.error),
      (r) =>
          state.copyWith(isLoading: false, isSuccess: true, errorMessage: ''),
    ));
  }
}
