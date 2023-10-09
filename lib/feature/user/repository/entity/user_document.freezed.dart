// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDocument {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get profileImageUrl => throw _privateConstructorUsedError;
  List<String> get mutedUserIdList => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDocumentCopyWith<UserDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDocumentCopyWith<$Res> {
  factory $UserDocumentCopyWith(
          UserDocument value, $Res Function(UserDocument) then) =
      _$UserDocumentCopyWithImpl<$Res, UserDocument>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String profileImageUrl,
      List<String> mutedUserIdList,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$UserDocumentCopyWithImpl<$Res, $Val extends UserDocument>
    implements $UserDocumentCopyWith<$Res> {
  _$UserDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? profileImageUrl = null,
    Object? mutedUserIdList = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mutedUserIdList: null == mutedUserIdList
          ? _value.mutedUserIdList
          : mutedUserIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDocumentCopyWith<$Res>
    implements $UserDocumentCopyWith<$Res> {
  factory _$$_UserDocumentCopyWith(
          _$_UserDocument value, $Res Function(_$_UserDocument) then) =
      __$$_UserDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String profileImageUrl,
      List<String> mutedUserIdList,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_UserDocumentCopyWithImpl<$Res>
    extends _$UserDocumentCopyWithImpl<$Res, _$_UserDocument>
    implements _$$_UserDocumentCopyWith<$Res> {
  __$$_UserDocumentCopyWithImpl(
      _$_UserDocument _value, $Res Function(_$_UserDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? profileImageUrl = null,
    Object? mutedUserIdList = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_UserDocument(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mutedUserIdList: null == mutedUserIdList
          ? _value._mutedUserIdList
          : mutedUserIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_UserDocument implements _UserDocument {
  const _$_UserDocument(
      {required this.id,
      required this.name,
      required this.email,
      required this.profileImageUrl,
      required final List<String> mutedUserIdList,
      required this.createdAt,
      required this.updatedAt})
      : _mutedUserIdList = mutedUserIdList;

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String profileImageUrl;
  final List<String> _mutedUserIdList;
  @override
  List<String> get mutedUserIdList {
    if (_mutedUserIdList is EqualUnmodifiableListView) return _mutedUserIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mutedUserIdList);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserDocument(id: $id, name: $name, email: $email, profileImageUrl: $profileImageUrl, mutedUserIdList: $mutedUserIdList, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDocument &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._mutedUserIdList, _mutedUserIdList) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      profileImageUrl,
      const DeepCollectionEquality().hash(_mutedUserIdList),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDocumentCopyWith<_$_UserDocument> get copyWith =>
      __$$_UserDocumentCopyWithImpl<_$_UserDocument>(this, _$identity);
}

abstract class _UserDocument implements UserDocument {
  const factory _UserDocument(
      {required final String id,
      required final String name,
      required final String email,
      required final String profileImageUrl,
      required final List<String> mutedUserIdList,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_UserDocument;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get profileImageUrl;
  @override
  List<String> get mutedUserIdList;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserDocumentCopyWith<_$_UserDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
