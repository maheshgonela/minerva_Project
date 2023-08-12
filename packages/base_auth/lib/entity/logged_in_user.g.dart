// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_in_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoggedInUser _$$_LoggedInUserFromJson(Map<String, dynamic> json) =>
    _$_LoggedInUser(
      id: json['id'] as String,
      name: json['name'] as String,
      userName: json['username'] as String,
      password: json['password'] as String,
      organization: json['organization'] as String,
      organizationName: json[r'organization$_identifier'] as String,
      defaultOrganization: json['defaultOrganization'] as String,
      defaultWarehouse: json['defaultWarehouse'] as String,
      businessPartner: json['businessPartner'] as String,
      client: json['client'] as String,
      businessPartnerAddress: json['partnerAddress'] as String,
      isLocked: json['locked'] as bool,
    );

Map<String, dynamic> _$$_LoggedInUserToJson(_$_LoggedInUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.userName,
      'password': instance.password,
      'organization': instance.organization,
      r'organization$_identifier': instance.organizationName,
      'defaultOrganization': instance.defaultOrganization,
      'defaultWarehouse': instance.defaultWarehouse,
      'businessPartner': instance.businessPartner,
      'client': instance.client,
      'partnerAddress': instance.businessPartnerAddress,
      'locked': instance.isLocked,
    };
