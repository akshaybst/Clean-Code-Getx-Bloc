// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$userModelImpl _$$userModelImplFromJson(Map<String, dynamic> json) =>
    _$userModelImpl(
      message: json['message'] as String? ?? "",
      accessToken: json['accessToken'] as String? ?? "",
      refreshToken: json['refreshToken'] as String? ?? "",
      id: (json['id'] as num?)?.toInt() ?? 0,
      username: json['username'] as String? ?? "",
      email: json['email'] as String? ?? "",
      firstName: json['firstName'] as String? ?? "",
      lastName: json['lastName'] as String? ?? "",
      gender: json['gender'] as String? ?? "",
      image: json['image'] as String? ?? "",
    );

Map<String, dynamic> _$$userModelImplToJson(_$userModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
    };
