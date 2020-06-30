import 'package:openflutterecommerce/data/model/category.dart';
import 'package:openflutterecommerce/data/model/commerce_image.dart';
import 'package:openflutterecommerce/data/model/hashtag.dart';
import 'package:openflutterecommerce/data/model/product.dart';
import 'package:openflutterecommerce/data/model/product_attribute.dart';

class AppData {
  static List<CommerceImage> imagesCategory = [
    CommerceImage(
      1001,
      'assets/images/categories/bellezza.jpeg',
      'bellezza ',
      isLocal: true,
    ),
  ];
  static List<CommerceImage> imagesTachipirina = [
    CommerceImage(
      0,
      'assets/images/products/tachipirina.jpeg',
      'tachipirina 1',
      isLocal: true,
    ),
/*
    CommerceImage(
      1011,
      'assets/images/products/tachipirina2.jpeg',
      'tachipirina 2',
      isLocal: true,
    ),
*/
  ];

  static List<ProductCategory> productCategoryList = [
    ProductCategory(
      3001,
      name: "Antinfiammatorio",
      image: imagesCategory[0],
    ),
    ProductCategory(
      3002,
      name: "Cura Capelli",
      image: imagesCategory[0],
    ),
    ProductCategory(
      3003,
      name: "Alimentazione",
      image: imagesCategory[0],
    ),
  ];
  static List<ProductCategory> productCategory1 = [
    productCategoryList[0],
  ];

  static List<HashTag> hashTagsPrescription = [
    HashTag(
      id: 2001,
      title: "PRESCRIZIONE",
    )
  ];
  static const sizeAttribute = ProductAttribute(name: 'size', options: [
    '500mg',
    '1000mg',
  ]);

  static List<Product> productList = [
    Product(
      1,
      title: "Tachipirina",
      subTitle: "TACHIPIRINA 1000mg in compresse effervescenti",
      price: 5.60,
      categories: productCategory1,
      hashTags: hashTagsPrescription,
      shortDescription: "short Description",
      description: "description",
      amountAvailable: 10,
      averageRating: 3.4,
      images: imagesTachipirina,
      selectableAttributes: [sizeAttribute],
    ),
    Product(
      2,
      title: "Tachipirina",
      subTitle: "TACHIPIRINA 1000mg in compresse effervescenti",
      price: 5.60,
      categories: productCategory1,
      hashTags: hashTagsPrescription,
      shortDescription: "short Description",
      description: "description",
      amountAvailable: 10,
      averageRating: 3.4,
      images: imagesTachipirina,
      selectableAttributes: [sizeAttribute],
    ),
    Product(
      3,
      title: "Tachipirina",
      subTitle: "TACHIPIRINA 1000mg in compresse effervescenti",
      price: 5.60,
      categories: productCategory1,
      hashTags: hashTagsPrescription,
      shortDescription: "short Description",
      description: "description",
      amountAvailable: 10,
      averageRating: 3.4,
      images: imagesTachipirina,
      selectableAttributes: [sizeAttribute],
    ),
    Product(
      4,
      title: "Tachipirina",
      subTitle: "TACHIPIRINA 1000mg in compresse effervescenti",
      price: 5.60,
      categories: productCategory1,
      hashTags: hashTagsPrescription,
      shortDescription: "short Description",
      description: "description",
      amountAvailable: 10,
      averageRating: 3.4,
      images: imagesTachipirina,
      selectableAttributes: [sizeAttribute],
    ),
  ];
  static List<Product> cartList = [];

  static List<String> showThumbnailList = [
    "assets/shoe_thumb_5.png",
    "assets/shoe_thumb_1.png",
    "assets/shoe_thumb_4.png",
    "assets/shoe_thumb_3.png",
  ];
  static String description =
      "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.";
}
