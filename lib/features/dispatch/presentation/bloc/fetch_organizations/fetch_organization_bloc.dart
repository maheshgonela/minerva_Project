import 'package:base_auth/entity/id_name.dart';
import 'package:bloc/bloc.dart';
import 'package:core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:injectable/injectable.dart';

part 'fetch_organization_bloc.freezed.dart';
part 'fetch_organization_event.dart';
part 'fetch_organization_state.dart';

@injectable
class FetchOrganizationBloc
    extends Bloc<FetchOrganizationEvent, FetchOrganizationState> {
  final DispatchRepository repo;
  final int pageLength = 20;

  FetchOrganizationBloc(
    this.repo,
  ) : super(FetchOrganizationState.initial()) {
    on<FetchOrganizationEvent>((event, emit) async {
      await event.map(fetchInitialOrganization: (e) async {
        emit(FetchOrganizationState.loading());

        var result = await repo.fetchOrganization(0, pageLength, e.query);
        emit(result.fold(
          (l) => FetchOrganizationState.failure(l),
          (r) => FetchOrganizationState.success(
            records: r,
            hasReachedMax: r.length < pageLength,
            query: e.query,
          ),
        ));
      }, fetchMoreOrganization: (e) async {
        emit(await state.when(
          initial: () => state,
          loading: () => state,
          success: (oldRecord, hasReachedMax, query) async {
            if (!hasReachedMax) {
              final result = await repo.fetchOrganization(
                oldRecord.length,
                oldRecord.length + pageLength,
                e.query,
              );
              return result.fold(
                (f) => FetchOrganizationState.failure(f),
                (r) => FetchOrganizationState.success(
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
