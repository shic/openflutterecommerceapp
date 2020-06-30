/*
 * @author Andrew Poteryahin <openflutterproject@gmail.com>
 * @copyright 2020 Open E-commerce App
 * @see cart_repository_impl.dart
 */

import 'dart:collection';

import 'package:openflutterecommerce/data/model/cart_item.dart';
import 'package:openflutterecommerce/data/model/commerce_image.dart';
import 'package:openflutterecommerce/data/model/product.dart';
import 'package:openflutterecommerce/data/model/product_attribute.dart';
import 'package:openflutterecommerce/data/model/promo.dart';
import 'package:openflutterecommerce/data/repositories/abstract/cart_repository.dart';

class CartRepositoryImpl extends CartRepository {
  static CartProductDataStorage cartProductDataStorage =
      CartProductDataStorage();

  @override
  Future addProductToCart(Product product, int quantity,
      Map<ProductAttribute, String> selectedAttributes) {
    // TODO: implement addProductToCart
    throw UnimplementedError();
  }

  @override
  Future changeQuantity(CartItem item, int newQuantity) async {
    for (int i = 0; i < cartProductDataStorage.items.length; i++) {
      if (cartProductDataStorage.items[i] == item) {
        cartProductDataStorage.items[i].productQuantity
            .changeQuantity(newQuantity);
      }
    }
  }

  @override
  Future<Promo> getAppliedPromo() {
    // TODO: implement getAppliedPromo
    throw UnimplementedError();
  }

  @override
  Future<List<CartItem>> getCartContent() async {
    return cartProductDataStorage.items;
  }

  @override
  Future setPromo(Promo promo) {
    // TODO: implement setPromo
    throw UnimplementedError();
  }
}

class CartProductDataStorage {
  static const sizeAttribute =
      ProductAttribute(name: 'size', options: ['S', 'M', 'L', 'XL']);
  static const colorAttribute =
      ProductAttribute(name: 'color', options: ['grey', 'red', 'yellow']);

  List<CartItem> items = [
    CartItem(
        product: Product(
          1,
          images: [
            CommerceImage(
              0,
              'assets/images/products/laroxyl.jpeg',
              '',
              isLocal: true,
            )
          ],
          discountPercent: 20,
          averageRating: 5,
          ratingCount: 10,
          price: 15,
          title: 'laroxyl',
          selectableAttributes: [sizeAttribute, colorAttribute],
          categories: [],
          hashTags: [],
          subTitle: null,
        ),
        selectedAttributes: HashMap.fromEntries([]),
        productQuantity: ProductQuantity(1)),
    CartItem(
        product: Product(
          2,
          images: [
            CommerceImage(
              0,
              'assets/images/products/tachipirina.jpeg',
              '',
              isLocal: true,
            )
          ],
          discountPercent: 20,
          averageRating: 5,
          ratingCount: 10,
          price: 15,
          title: 'Tachipirina 1000mg',
          selectableAttributes: [sizeAttribute, colorAttribute],
          categories: [],
          hashTags: [],
          subTitle: null,
        ),
        selectedAttributes: HashMap.fromEntries([]),
        productQuantity: ProductQuantity(1)),
  ];
}
