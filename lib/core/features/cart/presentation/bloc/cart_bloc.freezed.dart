// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(Product product, int quantity) addToCartProduct,
    required TResult Function(CartProduct product) removeFromCartProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(Product product, int quantity)? addToCartProduct,
    TResult Function(CartProduct product)? removeFromCartProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(Product product, int quantity)? addToCartProduct,
    TResult Function(CartProduct product)? removeFromCartProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_AddToCartProduct value) addToCartProduct,
    required TResult Function(_RemoveFromCartProduct value)
        removeFromCartProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToCartProduct value)? addToCartProduct,
    TResult Function(_RemoveFromCartProduct value)? removeFromCartProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToCartProduct value)? addToCartProduct,
    TResult Function(_RemoveFromCartProduct value)? removeFromCartProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$_GetAllProductsCopyWith<$Res> {
  factory _$$_GetAllProductsCopyWith(
          _$_GetAllProducts value, $Res Function(_$_GetAllProducts) then) =
      __$$_GetAllProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllProductsCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
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
    return 'CartEvent.getAllProducts()';
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
    required TResult Function(Product product, int quantity) addToCartProduct,
    required TResult Function(CartProduct product) removeFromCartProduct,
  }) {
    return getAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(Product product, int quantity)? addToCartProduct,
    TResult Function(CartProduct product)? removeFromCartProduct,
  }) {
    return getAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(Product product, int quantity)? addToCartProduct,
    TResult Function(CartProduct product)? removeFromCartProduct,
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
    required TResult Function(_AddToCartProduct value) addToCartProduct,
    required TResult Function(_RemoveFromCartProduct value)
        removeFromCartProduct,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToCartProduct value)? addToCartProduct,
    TResult Function(_RemoveFromCartProduct value)? removeFromCartProduct,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToCartProduct value)? addToCartProduct,
    TResult Function(_RemoveFromCartProduct value)? removeFromCartProduct,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class _GetAllProducts implements CartEvent {
  const factory _GetAllProducts() = _$_GetAllProducts;
}

/// @nodoc
abstract class _$$_AddToCartProductCopyWith<$Res> {
  factory _$$_AddToCartProductCopyWith(
          _$_AddToCartProduct value, $Res Function(_$_AddToCartProduct) then) =
      __$$_AddToCartProductCopyWithImpl<$Res>;
  $Res call({Product product, int quantity});
}

/// @nodoc
class __$$_AddToCartProductCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_AddToCartProductCopyWith<$Res> {
  __$$_AddToCartProductCopyWithImpl(
      _$_AddToCartProduct _value, $Res Function(_$_AddToCartProduct) _then)
      : super(_value, (v) => _then(v as _$_AddToCartProduct));

  @override
  _$_AddToCartProduct get _value => super._value as _$_AddToCartProduct;

  @override
  $Res call({
    Object? product = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_AddToCartProduct(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddToCartProduct implements _AddToCartProduct {
  const _$_AddToCartProduct({required this.product, required this.quantity});

  @override
  final Product product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addToCartProduct(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCartProduct &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_AddToCartProductCopyWith<_$_AddToCartProduct> get copyWith =>
      __$$_AddToCartProductCopyWithImpl<_$_AddToCartProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(Product product, int quantity) addToCartProduct,
    required TResult Function(CartProduct product) removeFromCartProduct,
  }) {
    return addToCartProduct(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(Product product, int quantity)? addToCartProduct,
    TResult Function(CartProduct product)? removeFromCartProduct,
  }) {
    return addToCartProduct?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(Product product, int quantity)? addToCartProduct,
    TResult Function(CartProduct product)? removeFromCartProduct,
    required TResult orElse(),
  }) {
    if (addToCartProduct != null) {
      return addToCartProduct(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_AddToCartProduct value) addToCartProduct,
    required TResult Function(_RemoveFromCartProduct value)
        removeFromCartProduct,
  }) {
    return addToCartProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToCartProduct value)? addToCartProduct,
    TResult Function(_RemoveFromCartProduct value)? removeFromCartProduct,
  }) {
    return addToCartProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToCartProduct value)? addToCartProduct,
    TResult Function(_RemoveFromCartProduct value)? removeFromCartProduct,
    required TResult orElse(),
  }) {
    if (addToCartProduct != null) {
      return addToCartProduct(this);
    }
    return orElse();
  }
}

abstract class _AddToCartProduct implements CartEvent {
  const factory _AddToCartProduct(
      {required final Product product,
      required final int quantity}) = _$_AddToCartProduct;

  Product get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_AddToCartProductCopyWith<_$_AddToCartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFromCartProductCopyWith<$Res> {
  factory _$$_RemoveFromCartProductCopyWith(_$_RemoveFromCartProduct value,
          $Res Function(_$_RemoveFromCartProduct) then) =
      __$$_RemoveFromCartProductCopyWithImpl<$Res>;
  $Res call({CartProduct product});
}

/// @nodoc
class __$$_RemoveFromCartProductCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_RemoveFromCartProductCopyWith<$Res> {
  __$$_RemoveFromCartProductCopyWithImpl(_$_RemoveFromCartProduct _value,
      $Res Function(_$_RemoveFromCartProduct) _then)
      : super(_value, (v) => _then(v as _$_RemoveFromCartProduct));

  @override
  _$_RemoveFromCartProduct get _value =>
      super._value as _$_RemoveFromCartProduct;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_RemoveFromCartProduct(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartProduct,
    ));
  }
}

/// @nodoc

class _$_RemoveFromCartProduct implements _RemoveFromCartProduct {
  const _$_RemoveFromCartProduct({required this.product});

  @override
  final CartProduct product;

  @override
  String toString() {
    return 'CartEvent.removeFromCartProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFromCartProduct &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveFromCartProductCopyWith<_$_RemoveFromCartProduct> get copyWith =>
      __$$_RemoveFromCartProductCopyWithImpl<_$_RemoveFromCartProduct>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(Product product, int quantity) addToCartProduct,
    required TResult Function(CartProduct product) removeFromCartProduct,
  }) {
    return removeFromCartProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(Product product, int quantity)? addToCartProduct,
    TResult Function(CartProduct product)? removeFromCartProduct,
  }) {
    return removeFromCartProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(Product product, int quantity)? addToCartProduct,
    TResult Function(CartProduct product)? removeFromCartProduct,
    required TResult orElse(),
  }) {
    if (removeFromCartProduct != null) {
      return removeFromCartProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_AddToCartProduct value) addToCartProduct,
    required TResult Function(_RemoveFromCartProduct value)
        removeFromCartProduct,
  }) {
    return removeFromCartProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToCartProduct value)? addToCartProduct,
    TResult Function(_RemoveFromCartProduct value)? removeFromCartProduct,
  }) {
    return removeFromCartProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_AddToCartProduct value)? addToCartProduct,
    TResult Function(_RemoveFromCartProduct value)? removeFromCartProduct,
    required TResult orElse(),
  }) {
    if (removeFromCartProduct != null) {
      return removeFromCartProduct(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCartProduct implements CartEvent {
  const factory _RemoveFromCartProduct({required final CartProduct product}) =
      _$_RemoveFromCartProduct;

  CartProduct get product;
  @JsonKey(ignore: true)
  _$$_RemoveFromCartProductCopyWith<_$_RemoveFromCartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartProduct> products) loaded,
    required TResult Function(String message) error,
    required TResult Function() removingFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RemovingFromCart value) removingFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
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
    return 'CartState.initial()';
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
    required TResult Function(List<CartProduct> products) loaded,
    required TResult Function(String message) error,
    required TResult Function() removingFromCart,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RemovingFromCart value) removingFromCart,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
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
    return 'CartState.loading()';
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
    required TResult Function(List<CartProduct> products) loaded,
    required TResult Function(String message) error,
    required TResult Function() removingFromCart,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RemovingFromCart value) removingFromCart,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({List<CartProduct> products});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_Loaded(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<CartProduct> products})
      : _products = products;

  final List<CartProduct> _products;
  @override
  List<CartProduct> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartState.loaded(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartProduct> products) loaded,
    required TResult Function(String message) error,
    required TResult Function() removingFromCart,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RemovingFromCart value) removingFromCart,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded({required final List<CartProduct> products}) =
      _$_Loaded;

  List<CartProduct> get products;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
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
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.error(message: $message)';
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
    required TResult Function(List<CartProduct> products) loaded,
    required TResult Function(String message) error,
    required TResult Function() removingFromCart,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RemovingFromCart value) removingFromCart,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartState {
  const factory _Error(final String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovingFromCartCopyWith<$Res> {
  factory _$$_RemovingFromCartCopyWith(
          _$_RemovingFromCart value, $Res Function(_$_RemovingFromCart) then) =
      __$$_RemovingFromCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemovingFromCartCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$_RemovingFromCartCopyWith<$Res> {
  __$$_RemovingFromCartCopyWithImpl(
      _$_RemovingFromCart _value, $Res Function(_$_RemovingFromCart) _then)
      : super(_value, (v) => _then(v as _$_RemovingFromCart));

  @override
  _$_RemovingFromCart get _value => super._value as _$_RemovingFromCart;
}

/// @nodoc

class _$_RemovingFromCart implements _RemovingFromCart {
  const _$_RemovingFromCart();

  @override
  String toString() {
    return 'CartState.removingFromCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RemovingFromCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartProduct> products) loaded,
    required TResult Function(String message) error,
    required TResult Function() removingFromCart,
  }) {
    return removingFromCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
  }) {
    return removingFromCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProduct> products)? loaded,
    TResult Function(String message)? error,
    TResult Function()? removingFromCart,
    required TResult orElse(),
  }) {
    if (removingFromCart != null) {
      return removingFromCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RemovingFromCart value) removingFromCart,
  }) {
    return removingFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
  }) {
    return removingFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RemovingFromCart value)? removingFromCart,
    required TResult orElse(),
  }) {
    if (removingFromCart != null) {
      return removingFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemovingFromCart implements CartState {
  const factory _RemovingFromCart() = _$_RemovingFromCart;
}
