// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAll,
    required TResult Function() getTOp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAll,
    TResult? Function()? getTOp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAll,
    TResult Function()? getTOp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAll value) getAll,
    required TResult Function(_getTop value) getTOp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAll value)? getAll,
    TResult? Function(_getTop value)? getTOp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAll value)? getAll,
    TResult Function(_getTop value)? getTOp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getAllImplCopyWith<$Res> {
  factory _$$getAllImplCopyWith(
          _$getAllImpl value, $Res Function(_$getAllImpl) then) =
      __$$getAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$getAllImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$getAllImpl>
    implements _$$getAllImplCopyWith<$Res> {
  __$$getAllImplCopyWithImpl(
      _$getAllImpl _value, $Res Function(_$getAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$getAllImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$getAllImpl implements _getAll {
  const _$getAllImpl(this.name);

  @override
  final String? name;

  @override
  String toString() {
    return 'NewsEvent.getAll(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getAllImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getAllImplCopyWith<_$getAllImpl> get copyWith =>
      __$$getAllImplCopyWithImpl<_$getAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAll,
    required TResult Function() getTOp,
  }) {
    return getAll(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAll,
    TResult? Function()? getTOp,
  }) {
    return getAll?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAll,
    TResult Function()? getTOp,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAll value) getAll,
    required TResult Function(_getTop value) getTOp,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAll value)? getAll,
    TResult? Function(_getTop value)? getTOp,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAll value)? getAll,
    TResult Function(_getTop value)? getTOp,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _getAll implements NewsEvent {
  const factory _getAll(final String? name) = _$getAllImpl;

  String? get name;
  @JsonKey(ignore: true)
  _$$getAllImplCopyWith<_$getAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getTopImplCopyWith<$Res> {
  factory _$$getTopImplCopyWith(
          _$getTopImpl value, $Res Function(_$getTopImpl) then) =
      __$$getTopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getTopImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$getTopImpl>
    implements _$$getTopImplCopyWith<$Res> {
  __$$getTopImplCopyWithImpl(
      _$getTopImpl _value, $Res Function(_$getTopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getTopImpl implements _getTop {
  const _$getTopImpl();

  @override
  String toString() {
    return 'NewsEvent.getTOp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getTopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAll,
    required TResult Function() getTOp,
  }) {
    return getTOp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAll,
    TResult? Function()? getTOp,
  }) {
    return getTOp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAll,
    TResult Function()? getTOp,
    required TResult orElse(),
  }) {
    if (getTOp != null) {
      return getTOp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAll value) getAll,
    required TResult Function(_getTop value) getTOp,
  }) {
    return getTOp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAll value)? getAll,
    TResult? Function(_getTop value)? getTOp,
  }) {
    return getTOp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAll value)? getAll,
    TResult Function(_getTop value)? getTOp,
    required TResult orElse(),
  }) {
    if (getTOp != null) {
      return getTOp(this);
    }
    return orElse();
  }
}

abstract class _getTop implements NewsEvent {
  const factory _getTop() = _$getTopImpl;
}

/// @nodoc
mixin _$NewsState {
  List<NewsEntity>? get entities => throw _privateConstructorUsedError;
  List<NewsEntity>? get topEntities => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call(
      {List<NewsEntity>? entities,
      List<NewsEntity>? topEntities,
      String? message,
      Status status});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = freezed,
    Object? topEntities = freezed,
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      entities: freezed == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>?,
      topEntities: freezed == topEntities
          ? _value.topEntities
          : topEntities // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsStateImplCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$$NewsStateImplCopyWith(
          _$NewsStateImpl value, $Res Function(_$NewsStateImpl) then) =
      __$$NewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsEntity>? entities,
      List<NewsEntity>? topEntities,
      String? message,
      Status status});
}

/// @nodoc
class __$$NewsStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsStateImpl>
    implements _$$NewsStateImplCopyWith<$Res> {
  __$$NewsStateImplCopyWithImpl(
      _$NewsStateImpl _value, $Res Function(_$NewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = freezed,
    Object? topEntities = freezed,
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_$NewsStateImpl(
      entities: freezed == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>?,
      topEntities: freezed == topEntities
          ? _value._topEntities
          : topEntities // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$NewsStateImpl implements _NewsState {
  _$NewsStateImpl(
      {final List<NewsEntity>? entities,
      final List<NewsEntity>? topEntities,
      this.message,
      this.status = Status.Loading})
      : _entities = entities,
        _topEntities = topEntities;

  final List<NewsEntity>? _entities;
  @override
  List<NewsEntity>? get entities {
    final value = _entities;
    if (value == null) return null;
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NewsEntity>? _topEntities;
  @override
  List<NewsEntity>? get topEntities {
    final value = _topEntities;
    if (value == null) return null;
    if (_topEntities is EqualUnmodifiableListView) return _topEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;
  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'NewsState(entities: $entities, topEntities: $topEntities, message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsStateImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            const DeepCollectionEquality()
                .equals(other._topEntities, _topEntities) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_entities),
      const DeepCollectionEquality().hash(_topEntities),
      message,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      __$$NewsStateImplCopyWithImpl<_$NewsStateImpl>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  factory _NewsState(
      {final List<NewsEntity>? entities,
      final List<NewsEntity>? topEntities,
      final String? message,
      final Status status}) = _$NewsStateImpl;

  @override
  List<NewsEntity>? get entities;
  @override
  List<NewsEntity>? get topEntities;
  @override
  String? get message;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
