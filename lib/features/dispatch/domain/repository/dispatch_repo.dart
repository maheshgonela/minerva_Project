import 'dart:typed_data';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_info_wrapper.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_item_ui_model.dart';
import 'package:minerva/features/dispatch/domain/entities/dispatch_ordered_product.dart';
import 'package:minerva/features/dispatch/domain/entities/sales_order.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/domain/entities/shop_dispatch_products.dart';

abstract class DispatchRepository {
  Future<Either<Failure, List<Shop>>> fetchShops(
      int start, int end, String? query);

  Future<Either<Failure, List<SalesOrder>>> fetchSalesOrder(
      int start, int end, String businessPartnerId);

  /// Create dispatch
  ///
  /// Steps:
  /// 1. Create goods shipment
  /// 2. Add shipment lines
  /// 3. Complete the shipment
  Future<Either<Failure, String>> createDispatch(
    List<DispatchInfoWrapper> dispatchInfo,
    String section,
    String driver,
    String vehicleNumber,
    String sender,
  );

  /// Update each order line with current dispatch qty.
  ///
  /// We are saving the dispatch qty in server because user can switch between
  /// stores to enter dispatch qty and storing dispatch qty info locally might
  /// not be ideal (e.g. app could crash for whatever reason then we will lose
  /// the dispatch info)
  Future<Either<Failure, bool>> saveDispatchQty(
    List<DispatchItemUiModel> products,
  );

  Future<Either<Failure, List<DispatchOrderedProduct>>>
      fetchDispatchBakeryProducts(String orderId);

  Future<Either<Failure, List<DispatchOrderedProduct>>>
      fetchDispatchSweetsProducts(String orderId);


  Future<Either<Failure, ShopDispatchProducts>> fetchShopShipments(
      String orderId, String section, {bool fromDispatchSection = true});

  Future<Either<Failure, bool>> saveProductDispatchQty(String productId, double dispatchQty);

  Future<Either<Failure, Uint8List>> downloadInvoice(String orderId);

  Future<Either<Failure, bool>> saveScannedProductDispatchQty(String productCode, String uniqueCode, String weight, String organization, String businessPartner);
}
