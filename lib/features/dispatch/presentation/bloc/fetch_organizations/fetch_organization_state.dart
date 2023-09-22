part of 'fetch_organization_bloc.dart';

@freezed
abstract class FetchOrganizationState with _$FetchOrganizationState {
  const factory FetchOrganizationState.initial() = _FetchOrganizationInitial;

  const factory FetchOrganizationState.loading() = _FetchOrganizationLoading;

  const factory FetchOrganizationState.success(
      {required List<IdName> records,
      required bool hasReachedMax,
      String? query}) = _FetchOrganizationSuccess;

  const factory FetchOrganizationState.failure(Failure failure) =
      _FetchOrganizationFailure;
}
