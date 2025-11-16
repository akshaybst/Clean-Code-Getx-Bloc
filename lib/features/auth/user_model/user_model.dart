
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @Default("") @JsonKey(name: "message") String message,
    @Default("") @JsonKey(name: "accessToken") String accessToken,
    @Default("") @JsonKey(name: "refreshToken") String refreshToken,
    @Default("") @JsonKey(name: "id") int id,
    @Default("") @JsonKey(name: "username") String username,
    @Default("") @JsonKey(name: "email") String email,
    @Default("") @JsonKey(name: "firstName") String firstName,
    @Default("") @JsonKey(name: "lastName") String lastName,
    @Default("") @JsonKey(name: "gender") String gender,
    @Default("") @JsonKey(name: "image") String image,
}) = _userModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}