// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dormitorys_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DormitorysResponseModel _$DormitorysResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DormitorysResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DormitorysResponseModel {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<DormitorysList>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DormitorysResponseModelCopyWith<DormitorysResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DormitorysResponseModelCopyWith<$Res> {
  factory $DormitorysResponseModelCopyWith(DormitorysResponseModel value,
          $Res Function(DormitorysResponseModel) then) =
      _$DormitorysResponseModelCopyWithImpl<$Res, DormitorysResponseModel>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<DormitorysList>? results});
}

/// @nodoc
class _$DormitorysResponseModelCopyWithImpl<$Res,
        $Val extends DormitorysResponseModel>
    implements $DormitorysResponseModelCopyWith<$Res> {
  _$DormitorysResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<DormitorysList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DormitorysResponseModelCopyWith<$Res>
    implements $DormitorysResponseModelCopyWith<$Res> {
  factory _$$_DormitorysResponseModelCopyWith(_$_DormitorysResponseModel value,
          $Res Function(_$_DormitorysResponseModel) then) =
      __$$_DormitorysResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<DormitorysList>? results});
}

/// @nodoc
class __$$_DormitorysResponseModelCopyWithImpl<$Res>
    extends _$DormitorysResponseModelCopyWithImpl<$Res,
        _$_DormitorysResponseModel>
    implements _$$_DormitorysResponseModelCopyWith<$Res> {
  __$$_DormitorysResponseModelCopyWithImpl(_$_DormitorysResponseModel _value,
      $Res Function(_$_DormitorysResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_DormitorysResponseModel(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<DormitorysList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DormitorysResponseModel implements _DormitorysResponseModel {
  const _$_DormitorysResponseModel(
      {this.count,
      this.next,
      this.previous,
      final List<DormitorysList>? results})
      : _results = results;

  factory _$_DormitorysResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_DormitorysResponseModelFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<DormitorysList>? _results;
  @override
  List<DormitorysList>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DormitorysResponseModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DormitorysResponseModel &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DormitorysResponseModelCopyWith<_$_DormitorysResponseModel>
      get copyWith =>
          __$$_DormitorysResponseModelCopyWithImpl<_$_DormitorysResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DormitorysResponseModelToJson(
      this,
    );
  }
}

abstract class _DormitorysResponseModel implements DormitorysResponseModel {
  const factory _DormitorysResponseModel(
      {final int? count,
      final String? next,
      final String? previous,
      final List<DormitorysList>? results}) = _$_DormitorysResponseModel;

  factory _DormitorysResponseModel.fromJson(Map<String, dynamic> json) =
      _$_DormitorysResponseModel.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<DormitorysList>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_DormitorysResponseModelCopyWith<_$_DormitorysResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

DormitorysList _$DormitorysListFromJson(Map<String, dynamic> json) {
  return _DormitorysList.fromJson(json);
}

/// @nodoc
mixin _$DormitorysList {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DormitorysListCopyWith<DormitorysList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DormitorysListCopyWith<$Res> {
  factory $DormitorysListCopyWith(
          DormitorysList value, $Res Function(DormitorysList) then) =
      _$DormitorysListCopyWithImpl<$Res, DormitorysList>;
  @useResult
  $Res call({int? id, String? image, String? name, String? description});
}

/// @nodoc
class _$DormitorysListCopyWithImpl<$Res, $Val extends DormitorysList>
    implements $DormitorysListCopyWith<$Res> {
  _$DormitorysListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DormitorysListCopyWith<$Res>
    implements $DormitorysListCopyWith<$Res> {
  factory _$$_DormitorysListCopyWith(
          _$_DormitorysList value, $Res Function(_$_DormitorysList) then) =
      __$$_DormitorysListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? image, String? name, String? description});
}

/// @nodoc
class __$$_DormitorysListCopyWithImpl<$Res>
    extends _$DormitorysListCopyWithImpl<$Res, _$_DormitorysList>
    implements _$$_DormitorysListCopyWith<$Res> {
  __$$_DormitorysListCopyWithImpl(
      _$_DormitorysList _value, $Res Function(_$_DormitorysList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_DormitorysList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DormitorysList implements _DormitorysList {
  const _$_DormitorysList({this.id, this.image, this.name, this.description});

  factory _$_DormitorysList.fromJson(Map<String, dynamic> json) =>
      _$$_DormitorysListFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'DormitorysList(id: $id, image: $image, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DormitorysList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DormitorysListCopyWith<_$_DormitorysList> get copyWith =>
      __$$_DormitorysListCopyWithImpl<_$_DormitorysList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DormitorysListToJson(
      this,
    );
  }
}

abstract class _DormitorysList implements DormitorysList {
  const factory _DormitorysList(
      {final int? id,
      final String? image,
      final String? name,
      final String? description}) = _$_DormitorysList;

  factory _DormitorysList.fromJson(Map<String, dynamic> json) =
      _$_DormitorysList.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_DormitorysListCopyWith<_$_DormitorysList> get copyWith =>
      throw _privateConstructorUsedError;
}
