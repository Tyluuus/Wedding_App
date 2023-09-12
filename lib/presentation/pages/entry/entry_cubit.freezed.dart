// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
    required TResult Function() navigateToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loaded,
    TResult? Function()? navigateToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    TResult Function()? navigateToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntryStateIdle value) idle,
    required TResult Function(EntryStateLoaded value) loaded,
    required TResult Function(EntryStateNavigateToHome value) navigateToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EntryStateIdle value)? idle,
    TResult? Function(EntryStateLoaded value)? loaded,
    TResult? Function(EntryStateNavigateToHome value)? navigateToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
    TResult Function(EntryStateNavigateToHome value)? navigateToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryStateCopyWith<$Res> {
  factory $EntryStateCopyWith(
          EntryState value, $Res Function(EntryState) then) =
      _$EntryStateCopyWithImpl<$Res, EntryState>;
}

/// @nodoc
class _$EntryStateCopyWithImpl<$Res, $Val extends EntryState>
    implements $EntryStateCopyWith<$Res> {
  _$EntryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EntryStateIdleCopyWith<$Res> {
  factory _$$EntryStateIdleCopyWith(
          _$EntryStateIdle value, $Res Function(_$EntryStateIdle) then) =
      __$$EntryStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EntryStateIdleCopyWithImpl<$Res>
    extends _$EntryStateCopyWithImpl<$Res, _$EntryStateIdle>
    implements _$$EntryStateIdleCopyWith<$Res> {
  __$$EntryStateIdleCopyWithImpl(
      _$EntryStateIdle _value, $Res Function(_$EntryStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EntryStateIdle implements EntryStateIdle {
  const _$EntryStateIdle();

  @override
  String toString() {
    return 'EntryState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EntryStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
    required TResult Function() navigateToHome,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loaded,
    TResult? Function()? navigateToHome,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    TResult Function()? navigateToHome,
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
    required TResult Function(EntryStateIdle value) idle,
    required TResult Function(EntryStateLoaded value) loaded,
    required TResult Function(EntryStateNavigateToHome value) navigateToHome,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EntryStateIdle value)? idle,
    TResult? Function(EntryStateLoaded value)? loaded,
    TResult? Function(EntryStateNavigateToHome value)? navigateToHome,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
    TResult Function(EntryStateNavigateToHome value)? navigateToHome,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class EntryStateIdle implements EntryState {
  const factory EntryStateIdle() = _$EntryStateIdle;
}

/// @nodoc
abstract class _$$EntryStateLoadedCopyWith<$Res> {
  factory _$$EntryStateLoadedCopyWith(
          _$EntryStateLoaded value, $Res Function(_$EntryStateLoaded) then) =
      __$$EntryStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EntryStateLoadedCopyWithImpl<$Res>
    extends _$EntryStateCopyWithImpl<$Res, _$EntryStateLoaded>
    implements _$$EntryStateLoadedCopyWith<$Res> {
  __$$EntryStateLoadedCopyWithImpl(
      _$EntryStateLoaded _value, $Res Function(_$EntryStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EntryStateLoaded implements EntryStateLoaded {
  const _$EntryStateLoaded();

  @override
  String toString() {
    return 'EntryState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EntryStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
    required TResult Function() navigateToHome,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loaded,
    TResult? Function()? navigateToHome,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    TResult Function()? navigateToHome,
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
    required TResult Function(EntryStateIdle value) idle,
    required TResult Function(EntryStateLoaded value) loaded,
    required TResult Function(EntryStateNavigateToHome value) navigateToHome,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EntryStateIdle value)? idle,
    TResult? Function(EntryStateLoaded value)? loaded,
    TResult? Function(EntryStateNavigateToHome value)? navigateToHome,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
    TResult Function(EntryStateNavigateToHome value)? navigateToHome,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EntryStateLoaded implements EntryState {
  const factory EntryStateLoaded() = _$EntryStateLoaded;
}

/// @nodoc
abstract class _$$EntryStateNavigateToHomeCopyWith<$Res> {
  factory _$$EntryStateNavigateToHomeCopyWith(_$EntryStateNavigateToHome value,
          $Res Function(_$EntryStateNavigateToHome) then) =
      __$$EntryStateNavigateToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EntryStateNavigateToHomeCopyWithImpl<$Res>
    extends _$EntryStateCopyWithImpl<$Res, _$EntryStateNavigateToHome>
    implements _$$EntryStateNavigateToHomeCopyWith<$Res> {
  __$$EntryStateNavigateToHomeCopyWithImpl(_$EntryStateNavigateToHome _value,
      $Res Function(_$EntryStateNavigateToHome) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EntryStateNavigateToHome implements EntryStateNavigateToHome {
  const _$EntryStateNavigateToHome();

  @override
  String toString() {
    return 'EntryState.navigateToHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryStateNavigateToHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loaded,
    required TResult Function() navigateToHome,
  }) {
    return navigateToHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loaded,
    TResult? Function()? navigateToHome,
  }) {
    return navigateToHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loaded,
    TResult Function()? navigateToHome,
    required TResult orElse(),
  }) {
    if (navigateToHome != null) {
      return navigateToHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntryStateIdle value) idle,
    required TResult Function(EntryStateLoaded value) loaded,
    required TResult Function(EntryStateNavigateToHome value) navigateToHome,
  }) {
    return navigateToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EntryStateIdle value)? idle,
    TResult? Function(EntryStateLoaded value)? loaded,
    TResult? Function(EntryStateNavigateToHome value)? navigateToHome,
  }) {
    return navigateToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryStateIdle value)? idle,
    TResult Function(EntryStateLoaded value)? loaded,
    TResult Function(EntryStateNavigateToHome value)? navigateToHome,
    required TResult orElse(),
  }) {
    if (navigateToHome != null) {
      return navigateToHome(this);
    }
    return orElse();
  }
}

abstract class EntryStateNavigateToHome implements EntryState {
  const factory EntryStateNavigateToHome() = _$EntryStateNavigateToHome;
}
