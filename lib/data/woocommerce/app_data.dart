import 'package:openflutterecommerce/data/model/category.dart';
import 'package:openflutterecommerce/data/model/commerce_image.dart';
import 'package:openflutterecommerce/data/model/hashtag.dart';
import 'package:openflutterecommerce/data/model/product.dart';

class AppData {
  static List<CommerceImage> images = [
    CommerceImage(
      1001,
      'assets/placeholder.png',
      'no image',
      isLocal: true,
    ),
  ];

  static List<ProductCategory> productCategoryList = [
    ProductCategory(
      1,
      name: "Bellezza",
      image: images[0],
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
      images: images,
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
