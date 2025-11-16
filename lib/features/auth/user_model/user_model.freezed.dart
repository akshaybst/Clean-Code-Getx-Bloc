// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _userModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "accessToken")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refreshToken")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "accessToken") String accessToken,
      @JsonKey(name: "refreshToken") String refreshToken,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName,
      @JsonKey(name: "gender") String gender,
      @JsonKey(name: "image") String image});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$userModelImplCopyWith(
          _$userModelImpl value, $Res Function(_$userModelImpl) then) =
      __$$userModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "accessToken") String accessToken,
      @JsonKey(name: "refreshToken") String refreshToken,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName,
      @JsonKey(name: "gender") String gender,
      @JsonKey(name: "image") String image});
}

/// @nodoc
class __$$userModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$userModelImpl>
    implements _$$userModelImplCopyWith<$Res> {
  __$$userModelImplCopyWithImpl(
      _$userModelImpl _value, $Res Function(_$userModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? image = null,
  }) {
    return _then(_$userModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$userModelImpl implements _userModel {
  _$userModelImpl(
      {@JsonKey(name: "message") this.message = "",
      @JsonKey(name: "accessToken") this.accessToken = "",
      @JsonKey(name: "refreshToken") this.refreshToken = "",
      @JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "username") this.username = "",
      @JsonKey(name: "email") this.email = "",
      @JsonKey(name: "firstName") this.firstName = "",
      @JsonKey(name: "lastName") this.lastName = "",
      @JsonKey(name: "gender") this.gender = "",
      @JsonKey(name: "image") this.image = ""});

  factory _$userModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$userModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "accessToken")
  final String accessToken;
  @override
  @JsonKey(name: "refreshToken")
  final String refreshToken;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "firstName")
  final String firstName;
  @override
  @JsonKey(name: "lastName")
  final String lastName;
  @override
  @JsonKey(name: "gender")
  final String gender;
  @override
  @JsonKey(name: "image")
  final String image;

  @override
  String toString() {
    return 'UserModel(message: $message, accessToken: $accessToken, refreshToken: $refreshToken, id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, accessToken,
      refreshToken, id, username, email, firstName, lastName, gender, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userModelImplCopyWith<_$userModelImpl> get copyWith =>
      __$$userModelImplCopyWithImpl<_$userModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$userModelImplToJson(
      this,
    );
  }
}

abstract class _userModel implements UserModel {
  factory _userModel(
      {@JsonKey(name: "message") final String message,
      @JsonKey(name: "accessToken") final String accessToken,
      @JsonKey(name: "refreshToken") final String refreshToken,
      @JsonKey(name: "id") final int id,
      @JsonKey(name: "username") final String username,
      @JsonKey(name: "email") final String email,
      @JsonKey(name: "firstName") final String firstName,
      @JsonKey(name: "lastName") final String lastName,
      @JsonKey(name: "gender") final String gender,
      @JsonKey(name: "image") final String image}) = _$userModelImpl;

  factory _userModel.fromJson(Map<String, dynamic> json) =
      _$userModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "accessToken")
  String get accessToken;
  @override
  @JsonKey(name: "refreshToken")
  String get refreshToken;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "firstName")
  String get firstName;
  @override
  @JsonKey(name: "lastName")
  String get lastName;
  @override
  @JsonKey(name: "gender")
  String get gender;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$userModelImplCopyWith<_$userModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
