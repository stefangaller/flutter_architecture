// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostsStateTearOff {
  const _$PostsStateTearOff();

  _PostsLoading loading() {
    return const _PostsLoading();
  }

  _PostsData data({required List<Post> posts}) {
    return _PostsData(
      posts: posts,
    );
  }

  _PostsError error({required String errorMessage}) {
    return _PostsError(
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $PostsState = _$PostsStateTearOff();

/// @nodoc
mixin _$PostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Post> posts) data,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? data,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? data,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsLoading value) loading,
    required TResult Function(_PostsData value) data,
    required TResult Function(_PostsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsLoading value)? loading,
    TResult Function(_PostsData value)? data,
    TResult Function(_PostsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsLoading value)? loading,
    TResult Function(_PostsData value)? data,
    TResult Function(_PostsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res> implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  final PostsState _value;
  // ignore: unused_field
  final $Res Function(PostsState) _then;
}

/// @nodoc
abstract class _$PostsLoadingCopyWith<$Res> {
  factory _$PostsLoadingCopyWith(
          _PostsLoading value, $Res Function(_PostsLoading) then) =
      __$PostsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostsLoadingCopyWithImpl<$Res> extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsLoadingCopyWith<$Res> {
  __$PostsLoadingCopyWithImpl(
      _PostsLoading _value, $Res Function(_PostsLoading) _then)
      : super(_value, (v) => _then(v as _PostsLoading));

  @override
  _PostsLoading get _value => super._value as _PostsLoading;
}

/// @nodoc

class _$_PostsLoading implements _PostsLoading {
  const _$_PostsLoading();

  @override
  String toString() {
    return 'PostsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Post> posts) data,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? data,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? data,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsLoading value) loading,
    required TResult Function(_PostsData value) data,
    required TResult Function(_PostsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsLoading value)? loading,
    TResult Function(_PostsData value)? data,
    TResult Function(_PostsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsLoading value)? loading,
    TResult Function(_PostsData value)? data,
    TResult Function(_PostsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PostsLoading implements PostsState {
  const factory _PostsLoading() = _$_PostsLoading;
}

/// @nodoc
abstract class _$PostsDataCopyWith<$Res> {
  factory _$PostsDataCopyWith(
          _PostsData value, $Res Function(_PostsData) then) =
      __$PostsDataCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class __$PostsDataCopyWithImpl<$Res> extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsDataCopyWith<$Res> {
  __$PostsDataCopyWithImpl(_PostsData _value, $Res Function(_PostsData) _then)
      : super(_value, (v) => _then(v as _PostsData));

  @override
  _PostsData get _value => super._value as _PostsData;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_PostsData(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_PostsData implements _PostsData {
  const _$_PostsData({required this.posts});

  @override
  final List<Post> posts;

  @override
  String toString() {
    return 'PostsState.data(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsData &&
            const DeepCollectionEquality().equals(other.posts, posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posts));

  @JsonKey(ignore: true)
  @override
  _$PostsDataCopyWith<_PostsData> get copyWith =>
      __$PostsDataCopyWithImpl<_PostsData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Post> posts) data,
    required TResult Function(String errorMessage) error,
  }) {
    return data(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? data,
    TResult Function(String errorMessage)? error,
  }) {
    return data?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? data,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsLoading value) loading,
    required TResult Function(_PostsData value) data,
    required TResult Function(_PostsError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsLoading value)? loading,
    TResult Function(_PostsData value)? data,
    TResult Function(_PostsError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsLoading value)? loading,
    TResult Function(_PostsData value)? data,
    TResult Function(_PostsError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _PostsData implements PostsState {
  const factory _PostsData({required List<Post> posts}) = _$_PostsData;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$PostsDataCopyWith<_PostsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostsErrorCopyWith<$Res> {
  factory _$PostsErrorCopyWith(
          _PostsError value, $Res Function(_PostsError) then) =
      __$PostsErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$PostsErrorCopyWithImpl<$Res> extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsErrorCopyWith<$Res> {
  __$PostsErrorCopyWithImpl(
      _PostsError _value, $Res Function(_PostsError) _then)
      : super(_value, (v) => _then(v as _PostsError));

  @override
  _PostsError get _value => super._value as _PostsError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_PostsError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostsError implements _PostsError {
  const _$_PostsError({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PostsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$PostsErrorCopyWith<_PostsError> get copyWith =>
      __$PostsErrorCopyWithImpl<_PostsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Post> posts) data,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? data,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? data,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsLoading value) loading,
    required TResult Function(_PostsData value) data,
    required TResult Function(_PostsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsLoading value)? loading,
    TResult Function(_PostsData value)? data,
    TResult Function(_PostsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsLoading value)? loading,
    TResult Function(_PostsData value)? data,
    TResult Function(_PostsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PostsError implements PostsState {
  const factory _PostsError({required String errorMessage}) = _$_PostsError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$PostsErrorCopyWith<_PostsError> get copyWith =>
      throw _privateConstructorUsedError;
}
