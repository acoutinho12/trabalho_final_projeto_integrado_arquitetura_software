// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wish_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(WishListProduct wishListProduct) addToWishList,
    required TResult Function() getWishListProductsId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(WishListProduct wishListProduct)? addToWishList,
    TResult Function()? getWishListProductsId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(WishListProduct wishListProduct)? addToWishList,
    TResult Function()? getWishListProductsId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_GetWishListProductsId value)
        getWishListProductsId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_GetWishListProductsId value)? getWishListProductsId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_GetWishListProductsId value)? getWishListProductsId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListEventCopyWith<$Res> {
  factory $WishListEventCopyWith(
          WishListEvent value, $Res Function(WishListEvent) then) =
      _$WishListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WishListEventCopyWithImpl<$Res>
    implements $WishListEventCopyWith<$Res> {
  _$WishListEventCopyWithImpl(this._value, this._then);

  final WishListEvent _value;
  // ignore: unused_field
  final $Res Function(WishListEvent) _then;
}

/// @nodoc
abstract class _$$_GetAllProductsCopyWith<$Res> {
  factory _$$_GetAllProductsCopyWith(
          _$_GetAllProducts value, $Res Function(_$_GetAllProducts) then) =
      __$$_GetAllProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllProductsCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res>
    implements _$$_GetAllProductsCopyWith<$Res> {
  __$$_GetAllProductsCopyWithImpl(
      _$_GetAllProducts _value, $Res Function(_$_GetAllProducts) _then)
      : super(_value, (v) => _then(v as _$_GetAllProducts));

  @override
  _$_GetAllProducts get _value => super._value as _$_GetAllProducts;
}

/// @nodoc

class _$_GetAllProducts implements _GetAllProducts {
  const _$_GetAllProducts();

  @override
  String toString() {
    return 'WishListEvent.getAllProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(WishListProduct wishListProduct) addToWishList,
    required TResult Function() getWishListProductsId,
  }) {
    return getAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(WishListProduct wishListProduct)? addToWishList,
    TResult Function()? getWishListProductsId,
  }) {
    return getAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(WishListProduct wishListProduct)? addToWishList,
    TResult Function()? getWishListProductsId,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_GetWishListProductsId value)
        getWishListProductsId,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_GetWishListProductsId value)? getWishListProductsId,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_GetWishListProductsId value)? getWishListProductsId,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class _GetAllProducts implements WishListEvent {
  const factory _GetAllProducts() = _$_GetAllProducts;
}

/// @nodoc
abstract class _$$_AddToWishListCopyWith<$Res> {
  factory _$$_AddToWishListCopyWith(
          _$_AddToWishList value, $Res Function(_$_AddToWishList) then) =
      __$$_AddToWishListCopyWithImpl<$Res>;
  $Res call({WishListProduct wishListProduct});
}

/// @nodoc
class __$$_AddToWishListCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res>
    implements _$$_AddToWishListCopyWith<$Res> {
  __$$_AddToWishListCopyWithImpl(
      _$_AddToWishList _value, $Res Function(_$_AddToWishList) _then)
      : super(_value, (v) => _then(v as _$_AddToWishList));

  @override
  _$_AddToWishList get _value => super._value as _$_AddToWishList;

  @override
  $Res call({
    Object? wishListProduct = freezed,
  }) {
    return _then(_$_AddToWishList(
      wishListProduct: wishListProduct == freezed
          ? _value.wishListProduct
          : wishListProduct // ignore: cast_nullable_to_non_nullable
              as WishListProduct,
    ));
  }
}

/// @nodoc

class _$_AddToWishList implements _AddToWishList {
  const _$_AddToWishList({required this.wishListProduct});

  @override
  final WishListProduct wishListProduct;

  @override
  String toString() {
    return 'WishListEvent.addToWishList(wishListProduct: $wishListProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToWishList &&
            const DeepCollectionEquality()
                .equals(other.wishListProduct, wishListProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(wishListProduct));

  @JsonKey(ignore: true)
  @override
  _$$_AddToWishListCopyWith<_$_AddToWishList> get copyWith =>
      __$$_AddToWishListCopyWithImpl<_$_AddToWishList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(WishListProduct wishListProduct) addToWishList,
    required TResult Function() getWishListProductsId,
  }) {
    return addToWishList(wishListProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(WishListProduct wishListProduct)? addToWishList,
    TResult Function()? getWishListProductsId,
  }) {
    return addToWishList?.call(wishListProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(WishListProduct wishListProduct)? addToWishList,
    TResult Function()? getWishListProductsId,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(wishListProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_GetWishListProductsId value)
        getWishListProductsId,
  }) {
    return addToWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_GetWishListProductsId value)? getWishListProductsId,
  }) {
    return addToWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_GetWishListProductsId value)? getWishListProductsId,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(this);
    }
    return orElse();
  }
}

abstract class _AddToWishList implements WishListEvent {
  const factory _AddToWishList(
      {required final WishListProduct wishListProduct}) = _$_AddToWishList;

  WishListProduct get wishListProduct;
  @JsonKey(ignore: true)
  _$$_AddToWishListCopyWith<_$_AddToWishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetWishListProductsIdCopyWith<$Res> {
  factory _$$_GetWishListProductsIdCopyWith(_$_GetWishListProductsId value,
          $Res Function(_$_GetWishListProductsId) then) =
      __$$_GetWishListProductsIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetWishListProductsIdCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res>
    implements _$$_GetWishListProductsIdCopyWith<$Res> {
  __$$_GetWishListProductsIdCopyWithImpl(_$_GetWishListProductsId _value,
      $Res Function(_$_GetWishListProductsId) _then)
      : super(_value, (v) => _then(v as _$_GetWishListProductsId));

  @override
  _$_GetWishListProductsId get _value =>
      super._value as _$_GetWishListProductsId;
}

/// @nodoc

class _$_GetWishListProductsId implements _GetWishListProductsId {
  const _$_GetWishListProductsId();

  @override
  String toString() {
    return 'WishListEvent.getWishListProductsId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetWishListProductsId);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(WishListProduct wishListProduct) addToWishList,
    required TResult Function() getWishListProductsId,
  }) {
    return getWishListProductsId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(WishListProduct wishListProduct)? addToWishList,
    TResult Function()? getWishListProductsId,
  }) {
    return getWishListProductsId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(WishListProduct wishListProduct)? addToWishList,
    TResult Function()? getWishListProductsId,
    required TResult orElse(),
  }) {
    if (getWishListProductsId != null) {
      return getWishListProductsId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_GetWishListProductsId value)
        getWishListProductsId,
  }) {
    return getWishListProductsId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_GetWishListProductsId value)? getWishListProductsId,
  }) {
    return getWishListProductsId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_GetWishListProductsId value)? getWishListProductsId,
    required TResult orElse(),
  }) {
    if (getWishListProductsId != null) {
      return getWishListProductsId(this);
    }
    return orElse();
  }
}

abstract class _GetWishListProductsId implements WishListEvent {
  const factory _GetWishListProductsId() = _$_GetWishListProductsId;
}

/// @nodoc
mixin _$WishListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishListProduct> wishListProducts)
        wishListProducts,
    required TResult Function(List<int> wishListProductsId) wishListProductsId,
    required TResult Function(bool isFavorite) favorited,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WishListProducts value) wishListProducts,
    required TResult Function(_WishListProductsId value) wishListProductsId,
    required TResult Function(_WishListFavorited value) favorited,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListStateCopyWith<$Res> {
  factory $WishListStateCopyWith(
          WishListState value, $Res Function(WishListState) then) =
      _$WishListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WishListStateCopyWithImpl<$Res>
    implements $WishListStateCopyWith<$Res> {
  _$WishListStateCopyWithImpl(this._value, this._then);

  final WishListState _value;
  // ignore: unused_field
  final $Res Function(WishListState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$WishListStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WishListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishListProduct> wishListProducts)
        wishListProducts,
    required TResult Function(List<int> wishListProductsId) wishListProductsId,
    required TResult Function(bool isFavorite) favorited,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WishListProducts value) wishListProducts,
    required TResult Function(_WishListProductsId value) wishListProductsId,
    required TResult Function(_WishListFavorited value) favorited,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WishListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$WishListStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WishListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishListProduct> wishListProducts)
        wishListProducts,
    required TResult Function(List<int> wishListProductsId) wishListProductsId,
    required TResult Function(bool isFavorite) favorited,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WishListProducts value) wishListProducts,
    required TResult Function(_WishListProductsId value) wishListProductsId,
    required TResult Function(_WishListFavorited value) favorited,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WishListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_WishListProductsCopyWith<$Res> {
  factory _$$_WishListProductsCopyWith(
          _$_WishListProducts value, $Res Function(_$_WishListProducts) then) =
      __$$_WishListProductsCopyWithImpl<$Res>;
  $Res call({List<WishListProduct> wishListProducts});
}

/// @nodoc
class __$$_WishListProductsCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res>
    implements _$$_WishListProductsCopyWith<$Res> {
  __$$_WishListProductsCopyWithImpl(
      _$_WishListProducts _value, $Res Function(_$_WishListProducts) _then)
      : super(_value, (v) => _then(v as _$_WishListProducts));

  @override
  _$_WishListProducts get _value => super._value as _$_WishListProducts;

  @override
  $Res call({
    Object? wishListProducts = freezed,
  }) {
    return _then(_$_WishListProducts(
      wishListProducts: wishListProducts == freezed
          ? _value._wishListProducts
          : wishListProducts // ignore: cast_nullable_to_non_nullable
              as List<WishListProduct>,
    ));
  }
}

/// @nodoc

class _$_WishListProducts implements _WishListProducts {
  const _$_WishListProducts(
      {required final List<WishListProduct> wishListProducts})
      : _wishListProducts = wishListProducts;

  final List<WishListProduct> _wishListProducts;
  @override
  List<WishListProduct> get wishListProducts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishListProducts);
  }

  @override
  String toString() {
    return 'WishListState.wishListProducts(wishListProducts: $wishListProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishListProducts &&
            const DeepCollectionEquality()
                .equals(other._wishListProducts, _wishListProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_wishListProducts));

  @JsonKey(ignore: true)
  @override
  _$$_WishListProductsCopyWith<_$_WishListProducts> get copyWith =>
      __$$_WishListProductsCopyWithImpl<_$_WishListProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishListProduct> wishListProducts)
        wishListProducts,
    required TResult Function(List<int> wishListProductsId) wishListProductsId,
    required TResult Function(bool isFavorite) favorited,
    required TResult Function(String message) error,
  }) {
    return wishListProducts(this.wishListProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
  }) {
    return wishListProducts?.call(this.wishListProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (wishListProducts != null) {
      return wishListProducts(this.wishListProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WishListProducts value) wishListProducts,
    required TResult Function(_WishListProductsId value) wishListProductsId,
    required TResult Function(_WishListFavorited value) favorited,
    required TResult Function(_Error value) error,
  }) {
    return wishListProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
  }) {
    return wishListProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (wishListProducts != null) {
      return wishListProducts(this);
    }
    return orElse();
  }
}

abstract class _WishListProducts implements WishListState {
  const factory _WishListProducts(
          {required final List<WishListProduct> wishListProducts}) =
      _$_WishListProducts;

  List<WishListProduct> get wishListProducts;
  @JsonKey(ignore: true)
  _$$_WishListProductsCopyWith<_$_WishListProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WishListProductsIdCopyWith<$Res> {
  factory _$$_WishListProductsIdCopyWith(_$_WishListProductsId value,
          $Res Function(_$_WishListProductsId) then) =
      __$$_WishListProductsIdCopyWithImpl<$Res>;
  $Res call({List<int> wishListProductsId});
}

/// @nodoc
class __$$_WishListProductsIdCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res>
    implements _$$_WishListProductsIdCopyWith<$Res> {
  __$$_WishListProductsIdCopyWithImpl(
      _$_WishListProductsId _value, $Res Function(_$_WishListProductsId) _then)
      : super(_value, (v) => _then(v as _$_WishListProductsId));

  @override
  _$_WishListProductsId get _value => super._value as _$_WishListProductsId;

  @override
  $Res call({
    Object? wishListProductsId = freezed,
  }) {
    return _then(_$_WishListProductsId(
      wishListProductsId: wishListProductsId == freezed
          ? _value._wishListProductsId
          : wishListProductsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_WishListProductsId implements _WishListProductsId {
  const _$_WishListProductsId({required final List<int> wishListProductsId})
      : _wishListProductsId = wishListProductsId;

  final List<int> _wishListProductsId;
  @override
  List<int> get wishListProductsId {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishListProductsId);
  }

  @override
  String toString() {
    return 'WishListState.wishListProductsId(wishListProductsId: $wishListProductsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishListProductsId &&
            const DeepCollectionEquality()
                .equals(other._wishListProductsId, _wishListProductsId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_wishListProductsId));

  @JsonKey(ignore: true)
  @override
  _$$_WishListProductsIdCopyWith<_$_WishListProductsId> get copyWith =>
      __$$_WishListProductsIdCopyWithImpl<_$_WishListProductsId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishListProduct> wishListProducts)
        wishListProducts,
    required TResult Function(List<int> wishListProductsId) wishListProductsId,
    required TResult Function(bool isFavorite) favorited,
    required TResult Function(String message) error,
  }) {
    return wishListProductsId(this.wishListProductsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
  }) {
    return wishListProductsId?.call(this.wishListProductsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (wishListProductsId != null) {
      return wishListProductsId(this.wishListProductsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WishListProducts value) wishListProducts,
    required TResult Function(_WishListProductsId value) wishListProductsId,
    required TResult Function(_WishListFavorited value) favorited,
    required TResult Function(_Error value) error,
  }) {
    return wishListProductsId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
  }) {
    return wishListProductsId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (wishListProductsId != null) {
      return wishListProductsId(this);
    }
    return orElse();
  }
}

abstract class _WishListProductsId implements WishListState {
  const factory _WishListProductsId(
      {required final List<int> wishListProductsId}) = _$_WishListProductsId;

  List<int> get wishListProductsId;
  @JsonKey(ignore: true)
  _$$_WishListProductsIdCopyWith<_$_WishListProductsId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WishListFavoritedCopyWith<$Res> {
  factory _$$_WishListFavoritedCopyWith(_$_WishListFavorited value,
          $Res Function(_$_WishListFavorited) then) =
      __$$_WishListFavoritedCopyWithImpl<$Res>;
  $Res call({bool isFavorite});
}

/// @nodoc
class __$$_WishListFavoritedCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res>
    implements _$$_WishListFavoritedCopyWith<$Res> {
  __$$_WishListFavoritedCopyWithImpl(
      _$_WishListFavorited _value, $Res Function(_$_WishListFavorited) _then)
      : super(_value, (v) => _then(v as _$_WishListFavorited));

  @override
  _$_WishListFavorited get _value => super._value as _$_WishListFavorited;

  @override
  $Res call({
    Object? isFavorite = freezed,
  }) {
    return _then(_$_WishListFavorited(
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WishListFavorited implements _WishListFavorited {
  const _$_WishListFavorited({required this.isFavorite});

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'WishListState.favorited(isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishListFavorited &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$$_WishListFavoritedCopyWith<_$_WishListFavorited> get copyWith =>
      __$$_WishListFavoritedCopyWithImpl<_$_WishListFavorited>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishListProduct> wishListProducts)
        wishListProducts,
    required TResult Function(List<int> wishListProductsId) wishListProductsId,
    required TResult Function(bool isFavorite) favorited,
    required TResult Function(String message) error,
  }) {
    return favorited(isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
  }) {
    return favorited?.call(isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (favorited != null) {
      return favorited(isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WishListProducts value) wishListProducts,
    required TResult Function(_WishListProductsId value) wishListProductsId,
    required TResult Function(_WishListFavorited value) favorited,
    required TResult Function(_Error value) error,
  }) {
    return favorited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
  }) {
    return favorited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (favorited != null) {
      return favorited(this);
    }
    return orElse();
  }
}

abstract class _WishListFavorited implements WishListState {
  const factory _WishListFavorited({required final bool isFavorite}) =
      _$_WishListFavorited;

  bool get isFavorite;
  @JsonKey(ignore: true)
  _$$_WishListFavoritedCopyWith<_$_WishListFavorited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$WishListStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'WishListState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishListProduct> wishListProducts)
        wishListProducts,
    required TResult Function(List<int> wishListProductsId) wishListProductsId,
    required TResult Function(bool isFavorite) favorited,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishListProduct> wishListProducts)? wishListProducts,
    TResult Function(List<int> wishListProductsId)? wishListProductsId,
    TResult Function(bool isFavorite)? favorited,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WishListProducts value) wishListProducts,
    required TResult Function(_WishListProductsId value) wishListProductsId,
    required TResult Function(_WishListFavorited value) favorited,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_WishListProducts value)? wishListProducts,
    TResult Function(_WishListProductsId value)? wishListProductsId,
    TResult Function(_WishListFavorited value)? favorited,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WishListState {
  const factory _Error({required final String message}) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
