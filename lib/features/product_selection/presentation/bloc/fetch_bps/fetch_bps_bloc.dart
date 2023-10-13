import 'package:base_auth/entity/id_name.dart';
import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/product_selection/domain/repository/productSelection_repo.dart';

import 'package:injectable/injectable.dart';

part 'fetch_bps_bloc.freezed.dart';
part 'fetch_bps_event.dart';
part 'fetch_bps_state.dart';

@injectable
class FetchBusinessPartnerBloc
    extends Bloc<FetchBusinessPartnerEvent, FetchBusinessPartnerState> {
  final ProductSelectionRepo repo;
  final int pageLength = 20;

  FetchBusinessPartnerBloc(
    this.repo,
  ) : super(const FetchBusinessPartnerState.initial()) {
    on<FetchBusinessPartnerEvent>((event, emit) async {
      await event.map(fetchInitialBusinessPartner: (e) async {
        emit(const FetchBusinessPartnerState.loading());

        var result = await repo.fetchBusinessPartners();
        emit(result.fold(
          (l) => FetchBusinessPartnerState.failure(l),
          (r) => FetchBusinessPartnerState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.query,
          ),
        ));
      }, fetchMoreBusinessPartner: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchBusinessPartners();
              return result.fold(
                (f) => FetchBusinessPartnerState.failure(f),
                (r) => FetchBusinessPartnerState.success(
                  records: oldRecord + r,
                  hasReachedMax: r.length < pageLength,
                ),
              );
            }
            return state;
          },
          failure: (_) => state,
        ));
      });
    });
  }
}
