// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_auth/base_auth.dart' as _i33;
import 'package:base_auth/repository/auth_repository.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:minerva/app_version_usecase.dart' as _i19;
import 'package:minerva/features/dispatch/data/repository/dispatch_repo_impl.dart'
    as _i5;
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart'
    as _i4;
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart'
    as _i22;
import 'package:minerva/features/dispatch/presentation/bloc/download_invoice/download_invoice_bloc.dart'
    as _i6;
import 'package:minerva/features/dispatch/presentation/bloc/fetch_dispatch_orderedproduct/fetch_dispatch_orderedproduct_bloc.dart'
    as _i7;
import 'package:minerva/features/dispatch/presentation/bloc/fetch_organizations/fetch_organization_bloc.dart'
    as _i8;
import 'package:minerva/features/dispatch/presentation/bloc/fetch_sales_order/fetch_sales_order_bloc.dart'
    as _i9;
import 'package:minerva/features/dispatch/presentation/bloc/fetch_shops/fetch_shop_bloc.dart'
    as _i10;
import 'package:minerva/features/dispatch/presentation/bloc/shop_trips/shop_trips_bloc.dart'
    as _i17;
import 'package:minerva/features/dispatch/presentation/cubit/tablet_dispatch_cubit.dart'
    as _i18;
import 'package:minerva/features/grn/data/repository/grn_repo_impl.dart'
    as _i12;
import 'package:minerva/features/grn/domain/repository/grn_repository.dart'
    as _i11;
import 'package:minerva/features/grn/presentation/blocs/create_grn/create_grn_cubit.dart'
    as _i23;
import 'package:minerva/features/grn/presentation/blocs/fetch_orderedproduct/fetch_orderedproduct_bloc.dart'
    as _i25;
import 'package:minerva/features/grn/presentation/blocs/fetch_purchase_order/fetch_purchase_order_bloc.dart'
    as _i28;
import 'package:minerva/features/grn/presentation/blocs/new_purchase_order/new_purchase_order_bloc.dart'
    as _i30;
import 'package:minerva/features/product_selection/data/repository/productSelection_repo_impl.dart'
    as _i14;
import 'package:minerva/features/product_selection/domain/repository/productSelection_repo.dart'
    as _i13;
import 'package:minerva/features/product_selection/presentation/bloc/fetch_product/fetch_product_bloc.dart'
    as _i26;
import 'package:minerva/features/product_selection/presentation/bloc/fetch_product_category/fetch_product_category_bloc.dart'
    as _i27;
import 'package:minerva/features/rtv/data/repository/shipment_repo_impl.dart'
    as _i16;
import 'package:minerva/features/rtv/domain/repository/shipment_repo.dart'
    as _i15;
import 'package:minerva/features/rtv/presentation/bloc/fetch_bps/fetch_bps_bloc.dart'
    as _i24;
import 'package:minerva/features/rtv/presentation/bloc/fetch_shipment/fetch_shipment_bloc.dart'
    as _i29;
import 'package:minerva/features/rtv/presentation/bloc/new_shipment/new_shipment_bloc.dart'
    as _i31;
import 'package:minerva/features/sign_in/data/repository/sign_in_repo_impl.dart'
    as _i21;
import 'package:minerva/features/sign_in/presentation/bloc/auth/auth_bloc.dart'
    as _i34;
import 'package:minerva/features/sign_in/presentation/bloc/sign_in_bloc/sign_in_bloc.dart'
    as _i32;
import 'package:minerva/get_it/external_libs_injection_module.dart' as _i35;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final externalLibs = _$ExternalLibs();
    gh.lazySingleton<_i3.Client>(() => externalLibs.client);
    gh.lazySingleton<_i4.DispatchRepository>(
        () => _i5.DispatchRepoImpl(gh<_i3.Client>()));
    gh.factory<_i6.DownloadInvoiceBloc>(() =>
        _i6.DownloadInvoiceBloc(repository: gh<_i4.DispatchRepository>()));
    gh.factory<_i7.FetchDispatchOrderedproductBloc>(() =>
        _i7.FetchDispatchOrderedproductBloc(gh<_i4.DispatchRepository>()));
    gh.factory<_i8.FetchOrganizationBloc>(
        () => _i8.FetchOrganizationBloc(gh<_i4.DispatchRepository>()));
    gh.factory<_i9.FetchSalesOrderBloc>(
        () => _i9.FetchSalesOrderBloc(gh<_i4.DispatchRepository>()));
    gh.factory<_i10.FetchShopBloc>(
        () => _i10.FetchShopBloc(gh<_i4.DispatchRepository>()));
    gh.lazySingleton<_i11.GRNRepository>(
        () => _i12.GRNRepoImpl(gh<_i3.Client>()));
    gh.lazySingleton<_i13.ProductSelectionRepo>(
        () => _i14.ProductSelectionRepoImpl(gh<_i3.Client>()));
    gh.lazySingleton<_i15.ShipmentRepo>(
        () => _i16.ShipmentRepoImpl(gh<_i3.Client>()));
    gh.factory<_i17.ShopTripsBloc>(
        () => _i17.ShopTripsBloc(gh<_i4.DispatchRepository>()));
    gh.factory<_i18.TabletDispatchCubit>(
        () => _i18.TabletDispatchCubit(gh<_i4.DispatchRepository>()));
    gh.factory<_i19.AppVersionUseCase>(
        () => _i19.AppVersionUseCase(gh<_i3.Client>()));
    gh.lazySingleton<_i20.AuthRepository>(
        () => _i21.SignInRepoImpl(gh<_i3.Client>()));
    gh.factory<_i22.CreateDispatchCubit>(
        () => _i22.CreateDispatchCubit(gh<_i4.DispatchRepository>()));
    gh.factory<_i23.CreateGrnCubit>(
        () => _i23.CreateGrnCubit(gh<_i11.GRNRepository>()));
    gh.factory<_i24.FetchBusinessPartnerBloc>(
        () => _i24.FetchBusinessPartnerBloc(gh<_i15.ShipmentRepo>()));
    gh.factory<_i25.FetchOrderedproductBloc>(
        () => _i25.FetchOrderedproductBloc(gh<_i11.GRNRepository>()));
    gh.factory<_i26.FetchProductBloc>(
        () => _i26.FetchProductBloc(gh<_i13.ProductSelectionRepo>()));
    gh.factory<_i27.FetchProductCategoryBloc>(
        () => _i27.FetchProductCategoryBloc(gh<_i13.ProductSelectionRepo>()));
    gh.factory<_i28.FetchPurchaseOrderBloc>(
        () => _i28.FetchPurchaseOrderBloc(gh<_i11.GRNRepository>()));
    gh.factory<_i29.FetchShipmentBloc>(
        () => _i29.FetchShipmentBloc(gh<_i15.ShipmentRepo>()));
    gh.factory<_i30.NewPurchaseOrderBloc>(
        () => _i30.NewPurchaseOrderBloc(gh<_i15.ShipmentRepo>()));
    gh.factory<_i31.NewShipmentBloc>(
        () => _i31.NewShipmentBloc(gh<_i15.ShipmentRepo>()));
    gh.factory<_i32.SignInBloc>(
        () => _i32.SignInBloc(signInRepo: gh<_i33.AuthRepository>()));
    gh.factory<_i34.AuthBloc>(() => _i34.AuthBloc(
          repository: gh<_i33.AuthRepository>(),
          appVersionUseCase: gh<_i19.AppVersionUseCase>(),
        ));
    return this;
  }
}

class _$ExternalLibs extends _i35.ExternalLibs {}
