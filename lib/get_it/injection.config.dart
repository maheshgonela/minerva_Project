// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_auth/base_auth.dart' as _i33;
import 'package:base_auth/repository/auth_repository.dart' as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:minerva/app_version_usecase.dart' as _i20;

import 'package:minerva/features/dispatch/data/repository/dispatch_repo_impl.dart'
    as _i5;
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart'
    as _i4;
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart'
    as _i23;
import 'package:minerva/features/dispatch/presentation/bloc/download_invoice/download_invoice_bloc.dart'
    as _i6;
import 'package:minerva/features/dispatch/presentation/bloc/fetch_dispatch_orderedproduct/fetch_dispatch_orderedproduct_bloc.dart'
    as _i7;
import 'package:minerva/features/dispatch/presentation/bloc/fetch_sales_order/fetch_sales_order_bloc.dart'
    as _i8;
import 'package:minerva/features/dispatch/presentation/bloc/fetch_shops/fetch_shop_bloc.dart'
    as _i9;
import 'package:minerva/features/dispatch/presentation/bloc/shop_trips/shop_trips_bloc.dart'
    as _i18;
import 'package:minerva/features/dispatch/presentation/cubit/tablet_dispatch_cubit.dart'
    as _i19;
import 'package:minerva/features/grn/data/repository/grn_repo_impl.dart'
    as _i11;
import 'package:minerva/features/grn/domain/repository/grn_repository.dart'
    as _i10;
import 'package:minerva/features/grn/presentation/blocs/create_grn/create_grn_cubit.dart'
    as _i24;
import 'package:minerva/features/grn/presentation/blocs/fetch_orderedproduct/fetch_orderedproduct_bloc.dart'
    as _i26;
import 'package:minerva/features/grn/presentation/blocs/fetch_purchase_order/fetch_purchase_order_bloc.dart'
    as _i28;
import 'package:minerva/features/rtv/data/repository/shipment_repo_impl.dart'
    as _i17;
import 'package:minerva/features/rtv/domain/repository/shipment_repo.dart'
    as _i16;
import 'package:minerva/features/rtv/presentation/bloc/fetch_bps/fetch_bps_bloc.dart'
    as _i25;
import 'package:minerva/features/rtv/presentation/bloc/fetch_product/fetch_product_bloc.dart'
    as _i27;
import 'package:minerva/features/rtv/presentation/bloc/fetch_shipment/fetch_shipment_bloc.dart'
    as _i29;
import 'package:minerva/features/rtv/presentation/bloc/new_shipment/new_shipment_bloc.dart'
    as _i30;
import 'package:minerva/features/sign_in/data/repository/sign_in_repo_impl.dart'
    as _i22;
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
    gh.factory<_i8.FetchSalesOrderBloc>(
        () => _i8.FetchSalesOrderBloc(gh<_i4.DispatchRepository>()));
    gh.factory<_i9.FetchShopBloc>(
        () => _i9.FetchShopBloc(gh<_i4.DispatchRepository>()));
    gh.lazySingleton<_i10.GRNRepository>(
        () => _i11.GRNRepoImpl(gh<_i3.Client>()));
    gh.lazySingleton<_i16.ShipmentRepo>(
        () => _i17.ShipmentRepoImpl(gh<_i3.Client>()));
    gh.factory<_i18.ShopTripsBloc>(
        () => _i18.ShopTripsBloc(gh<_i4.DispatchRepository>()));
    gh.factory<_i19.TabletDispatchCubit>(
        () => _i19.TabletDispatchCubit(gh<_i4.DispatchRepository>()));
    gh.factory<_i20.AppVersionUseCase>(
        () => _i20.AppVersionUseCase(gh<_i3.Client>()));
    gh.lazySingleton<_i21.AuthRepository>(
        () => _i22.SignInRepoImpl(gh<_i3.Client>()));
    gh.factory<_i23.CreateDispatchCubit>(
        () => _i23.CreateDispatchCubit(gh<_i4.DispatchRepository>()));
    gh.factory<_i24.CreateGrnCubit>(
        () => _i24.CreateGrnCubit(gh<_i10.GRNRepository>()));
    gh.factory<_i25.FetchBusinessPartnerBloc>(
        () => _i25.FetchBusinessPartnerBloc(gh<_i16.ShipmentRepo>()));
    gh.factory<_i26.FetchOrderedproductBloc>(
        () => _i26.FetchOrderedproductBloc(gh<_i10.GRNRepository>()));
    gh.factory<_i27.FetchProductBloc>(
        () => _i27.FetchProductBloc(gh<_i16.ShipmentRepo>()));
    gh.factory<_i28.FetchPurchaseOrderBloc>(
        () => _i28.FetchPurchaseOrderBloc(gh<_i10.GRNRepository>()));
    gh.factory<_i29.FetchShipmentBloc>(
        () => _i29.FetchShipmentBloc(gh<_i16.ShipmentRepo>()));
    gh.factory<_i30.NewShipmentBloc>(
        () => _i30.NewShipmentBloc(gh<_i16.ShipmentRepo>()));
    gh.factory<_i32.SignInBloc>(
        () => _i32.SignInBloc(signInRepo: gh<_i33.AuthRepository>()));
    gh.factory<_i34.AuthBloc>(() => _i34.AuthBloc(
          repository: gh<_i33.AuthRepository>(),
          appVersionUseCase: gh<_i20.AppVersionUseCase>(),
        ));
    return this;
  }
}

class _$ExternalLibs extends _i35.ExternalLibs {}
