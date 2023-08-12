part of 'fetch_bps_bloc.dart';

@freezed
class FetchBusinessPartnerEvent with _$FetchBusinessPartnerEvent {
  const factory FetchBusinessPartnerEvent.fetchInitialBusinessPartner({String? query}) =
      _FetchInitialBusinessPartner;
  const factory FetchBusinessPartnerEvent.fetchMoreBusinessPartner({String? query}) =
      _FetchMoreBusinessPartner;
}
