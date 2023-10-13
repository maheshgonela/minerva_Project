part of 'fetch_bps_bloc.dart';

@freezed
class FetchBusinessPartnerState with _$FetchBusinessPartnerState {
  const factory FetchBusinessPartnerState.initial() =
      _FetchBusinessPartnerInitial;

  const factory FetchBusinessPartnerState.loading() =
      _FetchBusinessPartnerLoading;

  const factory FetchBusinessPartnerState.success(
      {required List<IdName> records,
      required bool hasReachedMax,
      String? query}) = _FetchBusinessPartnerSuccess;

  const factory FetchBusinessPartnerState.failure(Failure failure) =
      _FetchBusinessPartnerFailure;
}
