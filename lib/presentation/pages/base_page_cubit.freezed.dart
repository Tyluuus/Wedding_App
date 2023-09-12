// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasePageStateIdle value) idle,
    required TResult Function(BasePageStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasePageStateIdle value)? idle,
    TResult? Function(BasePageStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasePageStateIdle value)? idle,
    TResult Function(BasePageStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePageStateCopyWith<$Res> {
  factory $BasePageStateCopyWith(
          BasePageState value, $Res Function(BasePageState) then) =
      _$BasePageStateCopyWithImpl<$Res, BasePageState>;
}

/// @nodoc
class _$BasePageStateCopyWithImpl<$Res, $Val extends BasePageState>
    implements $BasePageStateCopyWith<$Res> {
  _$BasePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BasePageStateIdleCopyWith<$Res> {
  factory _$$BasePageStateIdleCopyWith(
          _$BasePageStateIdle value, $Res Function(_$BasePageStateIdle) then) =
      __$$BasePageStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BasePageStateIdleCopyWithImpl<$Res>
    extends _$BasePageStateCopyWithImpl<$Res, _$BasePageStateIdle>
    implements _$$BasePageStateIdleCopyWith<$Res> {
  __$$BasePageStateIdleCopyWithImpl(
      _$BasePageStateIdle _value, $Res Function(_$BasePageStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BasePageStateIdle implements BasePageStateIdle {
  const _$BasePageStateIdle();

  @override
  String toString() {
    return 'BasePageState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BasePageStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasePageStateIdle value) idle,
    required TResult Function(BasePageStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasePageStateIdle value)? idle,
    TResult? Function(BasePageStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasePageStateIdle value)? idle,
    TResult Function(BasePageStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class BasePageStateIdle implements BasePageState {
  const factory BasePageStateIdle() = _$BasePageStateIdle;
}

/// @nodoc
abstract class _$$BasePageStateLoadedCopyWith<$Res> {
  factory _$$BasePageStateLoadedCopyWith(_$BasePageStateLoaded value,
          $Res Function(_$BasePageStateLoaded) then) =
      __$$BasePageStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BasePageStateLoadedCopyWithImpl<$Res>
    extends _$BasePageStateCopyWithImpl<$Res, _$BasePageStateLoaded>
    implements _$$BasePageStateLoadedCopyWith<$Res> {
  __$$BasePageStateLoadedCopyWithImpl(
      _$BasePageStateLoaded _value, $Res Function(_$BasePageStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BasePageStateLoaded implements BasePageStateLoaded {
  const _$BasePageStateLoaded();

  @override
  String toString() {
    return 'BasePageState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BasePageStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasePageStateIdle value) idle,
    required TResult Function(BasePageStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasePageStateIdle value)? idle,
    TResult? Function(BasePageStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasePageStateIdle value)? idle,
    TResult Function(BasePageStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BasePageStateLoaded implements BasePageState {
  const factory BasePageStateLoaded() = _$BasePageStateLoaded;
}
