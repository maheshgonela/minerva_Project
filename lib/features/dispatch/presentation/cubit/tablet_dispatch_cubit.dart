import 'package:base_auth/entity/id_name.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/dispatch/domain/entities/shop.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tablet_dispatch_cubit.freezed.dart';

part 'tablet_dispatch_cubit_state.dart';

@injectable
class TabletDispatchCubit extends Cubit<TabletDispatchState> {
  TabletDispatchCubit(this.repository)
      : super(const TabletDispatchState(shop: null));

  final DispatchRepository repository;

  void onShopSelected(IdName shop) {
    emit(state.copyWith(shop: shop));
  }
}
