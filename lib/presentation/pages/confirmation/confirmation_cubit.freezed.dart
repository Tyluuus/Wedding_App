// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirmation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() dump,
    required TResult Function(String userName, bool withPartner,
            String? partnerName, String? additionalInfo, String? contactNumber)
        sendConfirmation,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? dump,
    TResult? Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? dump,
    TResult Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationStateIdle value) idle,
    required TResult Function(ConfirmationStateDump value) dump,
    required TResult Function(ConfirmationStateSendConfirmation value)
        sendConfirmation,
    required TResult Function(ConfirmationStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmationStateIdle value)? idle,
    TResult? Function(ConfirmationStateDump value)? dump,
    TResult? Function(ConfirmationStateSendConfirmation value)?
        sendConfirmation,
    TResult? Function(ConfirmationStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationStateIdle value)? idle,
    TResult Function(ConfirmationStateDump value)? dump,
    TResult Function(ConfirmationStateSendConfirmation value)? sendConfirmation,
    TResult Function(ConfirmationStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationStateCopyWith<$Res> {
  factory $ConfirmationStateCopyWith(
          ConfirmationState value, $Res Function(ConfirmationState) then) =
      _$ConfirmationStateCopyWithImpl<$Res, ConfirmationState>;
}

/// @nodoc
class _$ConfirmationStateCopyWithImpl<$Res, $Val extends ConfirmationState>
    implements $ConfirmationStateCopyWith<$Res> {
  _$ConfirmationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConfirmationStateIdleCopyWith<$Res> {
  factory _$$ConfirmationStateIdleCopyWith(_$ConfirmationStateIdle value,
          $Res Function(_$ConfirmationStateIdle) then) =
      __$$ConfirmationStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmationStateIdleCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res, _$ConfirmationStateIdle>
    implements _$$ConfirmationStateIdleCopyWith<$Res> {
  __$$ConfirmationStateIdleCopyWithImpl(_$ConfirmationStateIdle _value,
      $Res Function(_$ConfirmationStateIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmationStateIdle implements ConfirmationStateIdle {
  const _$ConfirmationStateIdle();

  @override
  String toString() {
    return 'ConfirmationState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmationStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() dump,
    required TResult Function(String userName, bool withPartner,
            String? partnerName, String? additionalInfo, String? contactNumber)
        sendConfirmation,
    required TResult Function() loaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? dump,
    TResult? Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
    TResult? Function()? loaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? dump,
    TResult Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
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
    required TResult Function(ConfirmationStateIdle value) idle,
    required TResult Function(ConfirmationStateDump value) dump,
    required TResult Function(ConfirmationStateSendConfirmation value)
        sendConfirmation,
    required TResult Function(ConfirmationStateLoaded value) loaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmationStateIdle value)? idle,
    TResult? Function(ConfirmationStateDump value)? dump,
    TResult? Function(ConfirmationStateSendConfirmation value)?
        sendConfirmation,
    TResult? Function(ConfirmationStateLoaded value)? loaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationStateIdle value)? idle,
    TResult Function(ConfirmationStateDump value)? dump,
    TResult Function(ConfirmationStateSendConfirmation value)? sendConfirmation,
    TResult Function(ConfirmationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ConfirmationStateIdle implements ConfirmationState {
  const factory ConfirmationStateIdle() = _$ConfirmationStateIdle;
}

/// @nodoc
abstract class _$$ConfirmationStateDumpCopyWith<$Res> {
  factory _$$ConfirmationStateDumpCopyWith(_$ConfirmationStateDump value,
          $Res Function(_$ConfirmationStateDump) then) =
      __$$ConfirmationStateDumpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmationStateDumpCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res, _$ConfirmationStateDump>
    implements _$$ConfirmationStateDumpCopyWith<$Res> {
  __$$ConfirmationStateDumpCopyWithImpl(_$ConfirmationStateDump _value,
      $Res Function(_$ConfirmationStateDump) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmationStateDump implements ConfirmationStateDump {
  const _$ConfirmationStateDump();

  @override
  String toString() {
    return 'ConfirmationState.dump()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmationStateDump);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() dump,
    required TResult Function(String userName, bool withPartner,
            String? partnerName, String? additionalInfo, String? contactNumber)
        sendConfirmation,
    required TResult Function() loaded,
  }) {
    return dump();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? dump,
    TResult? Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
    TResult? Function()? loaded,
  }) {
    return dump?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? dump,
    TResult Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (dump != null) {
      return dump();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationStateIdle value) idle,
    required TResult Function(ConfirmationStateDump value) dump,
    required TResult Function(ConfirmationStateSendConfirmation value)
        sendConfirmation,
    required TResult Function(ConfirmationStateLoaded value) loaded,
  }) {
    return dump(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmationStateIdle value)? idle,
    TResult? Function(ConfirmationStateDump value)? dump,
    TResult? Function(ConfirmationStateSendConfirmation value)?
        sendConfirmation,
    TResult? Function(ConfirmationStateLoaded value)? loaded,
  }) {
    return dump?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationStateIdle value)? idle,
    TResult Function(ConfirmationStateDump value)? dump,
    TResult Function(ConfirmationStateSendConfirmation value)? sendConfirmation,
    TResult Function(ConfirmationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (dump != null) {
      return dump(this);
    }
    return orElse();
  }
}

abstract class ConfirmationStateDump implements ConfirmationState {
  const factory ConfirmationStateDump() = _$ConfirmationStateDump;
}

/// @nodoc
abstract class _$$ConfirmationStateSendConfirmationCopyWith<$Res> {
  factory _$$ConfirmationStateSendConfirmationCopyWith(
          _$ConfirmationStateSendConfirmation value,
          $Res Function(_$ConfirmationStateSendConfirmation) then) =
      __$$ConfirmationStateSendConfirmationCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userName,
      bool withPartner,
      String? partnerName,
      String? additionalInfo,
      String? contactNumber});
}

/// @nodoc
class __$$ConfirmationStateSendConfirmationCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res,
        _$ConfirmationStateSendConfirmation>
    implements _$$ConfirmationStateSendConfirmationCopyWith<$Res> {
  __$$ConfirmationStateSendConfirmationCopyWithImpl(
      _$ConfirmationStateSendConfirmation _value,
      $Res Function(_$ConfirmationStateSendConfirmation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? withPartner = null,
    Object? partnerName = freezed,
    Object? additionalInfo = freezed,
    Object? contactNumber = freezed,
  }) {
    return _then(_$ConfirmationStateSendConfirmation(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == withPartner
          ? _value.withPartner
          : withPartner // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == partnerName
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConfirmationStateSendConfirmation
    implements ConfirmationStateSendConfirmation {
  const _$ConfirmationStateSendConfirmation(this.userName, this.withPartner,
      this.partnerName, this.additionalInfo, this.contactNumber);

  @override
  final String userName;
  @override
  final bool withPartner;
  @override
  final String? partnerName;
  @override
  final String? additionalInfo;
  @override
  final String? contactNumber;

  @override
  String toString() {
    return 'ConfirmationState.sendConfirmation(userName: $userName, withPartner: $withPartner, partnerName: $partnerName, additionalInfo: $additionalInfo, contactNumber: $contactNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationStateSendConfirmation &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.withPartner, withPartner) ||
                other.withPartner == withPartner) &&
            (identical(other.partnerName, partnerName) ||
                other.partnerName == partnerName) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, withPartner,
      partnerName, additionalInfo, contactNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmationStateSendConfirmationCopyWith<
          _$ConfirmationStateSendConfirmation>
      get copyWith => __$$ConfirmationStateSendConfirmationCopyWithImpl<
          _$ConfirmationStateSendConfirmation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() dump,
    required TResult Function(String userName, bool withPartner,
            String? partnerName, String? additionalInfo, String? contactNumber)
        sendConfirmation,
    required TResult Function() loaded,
  }) {
    return sendConfirmation(
        userName, withPartner, partnerName, additionalInfo, contactNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? dump,
    TResult? Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
    TResult? Function()? loaded,
  }) {
    return sendConfirmation?.call(
        userName, withPartner, partnerName, additionalInfo, contactNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? dump,
    TResult Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (sendConfirmation != null) {
      return sendConfirmation(
          userName, withPartner, partnerName, additionalInfo, contactNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationStateIdle value) idle,
    required TResult Function(ConfirmationStateDump value) dump,
    required TResult Function(ConfirmationStateSendConfirmation value)
        sendConfirmation,
    required TResult Function(ConfirmationStateLoaded value) loaded,
  }) {
    return sendConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmationStateIdle value)? idle,
    TResult? Function(ConfirmationStateDump value)? dump,
    TResult? Function(ConfirmationStateSendConfirmation value)?
        sendConfirmation,
    TResult? Function(ConfirmationStateLoaded value)? loaded,
  }) {
    return sendConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationStateIdle value)? idle,
    TResult Function(ConfirmationStateDump value)? dump,
    TResult Function(ConfirmationStateSendConfirmation value)? sendConfirmation,
    TResult Function(ConfirmationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (sendConfirmation != null) {
      return sendConfirmation(this);
    }
    return orElse();
  }
}

abstract class ConfirmationStateSendConfirmation implements ConfirmationState {
  const factory ConfirmationStateSendConfirmation(
      final String userName,
      final bool withPartner,
      final String? partnerName,
      final String? additionalInfo,
      final String? contactNumber) = _$ConfirmationStateSendConfirmation;

  String get userName;
  bool get withPartner;
  String? get partnerName;
  String? get additionalInfo;
  String? get contactNumber;
  @JsonKey(ignore: true)
  _$$ConfirmationStateSendConfirmationCopyWith<
          _$ConfirmationStateSendConfirmation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmationStateLoadedCopyWith<$Res> {
  factory _$$ConfirmationStateLoadedCopyWith(_$ConfirmationStateLoaded value,
          $Res Function(_$ConfirmationStateLoaded) then) =
      __$$ConfirmationStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmationStateLoadedCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res, _$ConfirmationStateLoaded>
    implements _$$ConfirmationStateLoadedCopyWith<$Res> {
  __$$ConfirmationStateLoadedCopyWithImpl(_$ConfirmationStateLoaded _value,
      $Res Function(_$ConfirmationStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmationStateLoaded implements ConfirmationStateLoaded {
  const _$ConfirmationStateLoaded();

  @override
  String toString() {
    return 'ConfirmationState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() dump,
    required TResult Function(String userName, bool withPartner,
            String? partnerName, String? additionalInfo, String? contactNumber)
        sendConfirmation,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? dump,
    TResult? Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? dump,
    TResult Function(String userName, bool withPartner, String? partnerName,
            String? additionalInfo, String? contactNumber)?
        sendConfirmation,
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
    required TResult Function(ConfirmationStateIdle value) idle,
    required TResult Function(ConfirmationStateDump value) dump,
    required TResult Function(ConfirmationStateSendConfirmation value)
        sendConfirmation,
    required TResult Function(ConfirmationStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmationStateIdle value)? idle,
    TResult? Function(ConfirmationStateDump value)? dump,
    TResult? Function(ConfirmationStateSendConfirmation value)?
        sendConfirmation,
    TResult? Function(ConfirmationStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationStateIdle value)? idle,
    TResult Function(ConfirmationStateDump value)? dump,
    TResult Function(ConfirmationStateSendConfirmation value)? sendConfirmation,
    TResult Function(ConfirmationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ConfirmationStateLoaded implements ConfirmationState {
  const factory ConfirmationStateLoaded() = _$ConfirmationStateLoaded;
}
