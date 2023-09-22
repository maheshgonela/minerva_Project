part of 'fetch_organization_bloc.dart';

@freezed
abstract class FetchOrganizationEvent with _$FetchOrganizationEvent {
  const factory FetchOrganizationEvent.fetchInitialOrganization(
      {String? query}) = _FetchInitialOrganization;
  const factory FetchOrganizationEvent.fetchMoreOrganization({String? query}) =
      _FetchMoreOrganization;
}
