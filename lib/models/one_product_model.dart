// To parse this JSON data, do
//
//     final jsonOneProduct = jsonOneProductFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

JsonOneProduct jsonOneProductFromJson(String str) => JsonOneProduct.fromJson(json.decode(str));

String jsonOneProductToJson(JsonOneProduct data) => json.encode(data.toJson());

class JsonOneProduct {
  JsonOneProduct({
    required this.product,
  });

  Product product;

  factory JsonOneProduct.fromJson(Map<String, dynamic> json) => JsonOneProduct(
    product: Product.fromJson(json["product"]),
  );

  Map<String, dynamic> toJson() => {
    "product": product.toJson(),
  };
}

class Product {
  Product({
    required this.oneProduct,
    required this.recommenendations,
  });

  OneProduct oneProduct;
  List<Recommenendation> recommenendations;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    oneProduct: OneProduct.fromJson(json["oneProduct"]),
    recommenendations: List<Recommenendation>.from(json["recommenendations"].map((x) => Recommenendation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "oneProduct": oneProduct.toJson(),
    "recommenendations": List<dynamic>.from(recommenendations.map((x) => x.toJson())),
  };
}

class OneProduct {
  OneProduct({
    required this.id,
    required this.productId,
    required this.nameTm,
    required this.nameRu,
    required this.bodyTm,
    required this.bodyRu,
    required this.productCode,
    required this.price,
    required this.priceOld,
    required this.priceTm,
    required this.priceTmOld,
    required this.priceUsd,
    required this.priceUsdOld,
    required this.discount,
    required this.isActive,
    required this.sex,
    required this.isNew,
    required this.isAction,
    required this.rating,
    required this.ratingCount,
    required this.soldCount,
    required this.likeCount,
    required this.isNewExpire,
    required this.isLiked,
    required this.note,
    required this.categoryId,
    required this.subcategoryId,
    required this.brandId,
    required this.sellerId,
    required this.createdAt,
    required this.updatedAt,
    required this.productColors,
    required this.productSizes,
    required this.images,
    required this.details,
    required this.brand,
    required this.seller,
    required this.productStock,
  });

  int id;
  String productId;
  String nameTm;
  String nameRu;
  String bodyTm;
  String bodyRu;
  String productCode;
  num price;
  dynamic priceOld;
  dynamic priceTm;
  dynamic priceTmOld;
  dynamic priceUsd;
  dynamic priceUsdOld;
  int discount;
  bool isActive;
  String sex;
  bool isNew;
  bool isAction;
  int rating;
  int ratingCount;
  int soldCount;
  int likeCount;
  String isNewExpire;
  bool isLiked;
  dynamic note;
  int categoryId;
  int subcategoryId;
  dynamic brandId;
  int sellerId;
  String createdAt;
  String updatedAt;
  List<dynamic> productColors;
  List<dynamic> productSizes;
  List<Image> images;
  List<Detail> details;
  dynamic brand;
  Seller seller;
  List<ProductStock> productStock;

  factory OneProduct.fromJson(Map<String, dynamic> json) => OneProduct(
    id: json["id"],
    productId: json["product_id"],
    nameTm: json["name_tm"],
    nameRu: json["name_ru"],
    bodyTm: json["body_tm"],
    bodyRu: json["body_ru"],
    productCode: json["product_code"],
    price: json["price"],
    priceOld: json["price_old"],
    priceTm: json["price_tm"],
    priceTmOld: json["price_tm_old"],
    priceUsd: json["price_usd"],
    priceUsdOld: json["price_usd_old"],
    discount: json["discount"],
    isActive: json["isActive"],
    sex: json["sex"],
    isNew: json["isNew"],
    isAction: json["isAction"],
    rating: json["rating"],
    ratingCount: json["rating_count"],
    soldCount: json["sold_count"],
    likeCount: json["likeCount"],
    isNewExpire: json["is_new_expire"],
    isLiked: json["isLiked"],
    note: json["note"],
    categoryId: json["categoryId"],
    subcategoryId: json["subcategoryId"],
    brandId: json["brandId"],
    sellerId: json["sellerId"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    productColors: List<dynamic>.from(json["product_colors"].map((x) => x)),
    productSizes: List<dynamic>.from(json["product_sizes"].map((x) => x)),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
    brand: json["brand"],
    seller: Seller.fromJson(json["seller"]),
    productStock: List<ProductStock>.from(json["product_stock"].map((x) => ProductStock.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "name_tm": nameTm,
    "name_ru": nameRu,
    "body_tm": bodyTm,
    "body_ru": bodyRu,
    "product_code": productCode,
    "price": price,
    "price_old": priceOld,
    "price_tm": priceTm,
    "price_tm_old": priceTmOld,
    "price_usd": priceUsd,
    "price_usd_old": priceUsdOld,
    "discount": discount,
    "isActive": isActive,
    "sex": sex,
    "isNew": isNew,
    "isAction": isAction,
    "rating": rating,
    "rating_count": ratingCount,
    "sold_count": soldCount,
    "likeCount": likeCount,
    "is_new_expire": isNewExpire,
    "isLiked": isLiked,
    "note": note,
    "categoryId": categoryId,
    "subcategoryId": subcategoryId,
    "brandId": brandId,
    "sellerId": sellerId,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "product_colors": List<dynamic>.from(productColors.map((x) => x)),
    "product_sizes": List<dynamic>.from(productSizes.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
    "brand": brand,
    "seller": seller.toJson(),
    "product_stock": List<dynamic>.from(productStock.map((x) => x.toJson())),
  };
}

class Detail {
  Detail({
    required this.id,
    required this.detailId,
    required this.image,
    required this.productId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String detailId;
  String image;
  int productId;
  String createdAt;
  String updatedAt;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    id: json["id"],
    detailId: json["detail_id"],
    image: json["image"],
    productId: json["productId"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "detail_id": detailId,
    "image": image,
    "productId": productId,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

class Image {
  Image({
    required this.id,
    required this.imageId,
    required this.productId,
    required this.image,
    required this.productcolorId,
    required this.createdAt,
    required this.updatedAt,
    required this.freeproductId,
  });

  int id;
  String imageId;
  int productId;
  String? image;
  dynamic productcolorId;
  String createdAt;
  String updatedAt;
  dynamic freeproductId;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    imageId: json["image_id"],
    productId: json["productId"],
    image: json["image"]==null?"":json["image"],
    productcolorId: json["productcolorId"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    freeproductId: json["freeproductId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image_id": imageId,
    "productId": productId,
    "image": image,
    "productcolorId": productcolorId,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "freeproductId": freeproductId,
  };
}

class ProductStock {
  ProductStock({
    required this.id,
    required this.productId,
    required this.productsizeId,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int productId;
  dynamic productsizeId;
  int quantity;
  String createdAt;
  String updatedAt;

  factory ProductStock.fromJson(Map<String, dynamic> json) => ProductStock(
    id: json["id"],
    productId: json["productId"],
    productsizeId: json["productsizeId"],
    quantity: json["quantity"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "productId": productId,
    "productsizeId": productsizeId,
    "quantity": quantity,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

class Seller {
  Seller({
    required this.id,
    required this.sellerId,
    required this.phoneNumber,
    required this.phoneNumberExtra,
    required this.nameTm,
    required this.nameRu,
    required this.image,
    required this.password,
    required this.nickname,
    required this.addressTm,
    required this.addressRu,
    required this.isActive,
    required this.sequence,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String sellerId;
  String phoneNumber;
  dynamic phoneNumberExtra;
  String nameTm;
  String nameRu;
  String image;
  String password;
  dynamic nickname;
  String addressTm;
  String addressRu;
  bool isActive;
  int sequence;
  String createdAt;
  String updatedAt;

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
    id: json["id"],
    sellerId: json["seller_id"],
    phoneNumber: json["phone_number"],
    phoneNumberExtra: json["phone_number_extra"],
    nameTm: json["name_tm"],
    nameRu: json["name_ru"],
    image: json["image"],
    password: json["password"],
    nickname: json["nickname"],
    addressTm: json["address_tm"],
    addressRu: json["address_ru"],
    isActive: json["isActive"],
    sequence: json["sequence"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "seller_id": sellerId,
    "phone_number": phoneNumber,
    "phone_number_extra": phoneNumberExtra,
    "name_tm": nameTm,
    "name_ru": nameRu,
    "image": image,
    "password": password,
    "nickname": nickname,
    "address_tm": addressTm,
    "address_ru": addressRu,
    "isActive": isActive,
    "sequence": sequence,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

class Recommenendation {
  Recommenendation({
    required this.id,
    required this.productId,
    required this.nameTm,
    required this.nameRu,
    required this.bodyTm,
    required this.bodyRu,
    required this.productCode,
    required this.price,
    required this.priceOld,
    required this.priceTm,
    required this.priceTmOld,
    required this.priceUsd,
    required this.priceUsdOld,
    required this.discount,
    required this.isActive,
    required this.sex,
    required this.isNew,
    required this.isAction,
    required this.rating,
    required this.ratingCount,
    required this.soldCount,
    required this.likeCount,
    required this.isNewExpire,
    required this.isLiked,
    required this.note,
    required this.categoryId,
    required this.subcategoryId,
    required this.brandId,
    required this.sellerId,
    required this.createdAt,
    required this.updatedAt,
    required this.images,
  });

  int id;
  String productId;
  String nameTm;
  String nameRu;
  String bodyTm;
  String bodyRu;
  String productCode;
  num price;
  dynamic priceOld;
  dynamic priceTm;
  dynamic priceTmOld;
  dynamic priceUsd;
  dynamic priceUsdOld;
  int discount;
  bool isActive;
  String sex;
  bool isNew;
  bool isAction;
  int rating;
  int ratingCount;
  int soldCount;
  int likeCount;
  String isNewExpire;
  bool isLiked;
  dynamic note;
  int categoryId;
  int subcategoryId;
  dynamic brandId;
  int sellerId;
  String createdAt;
  String updatedAt;
  List<Image> images;

  factory Recommenendation.fromJson(Map<String, dynamic> json) => Recommenendation(
    id: json["id"],
    productId: json["product_id"],
    nameTm: json["name_tm"],
    nameRu: json["name_ru"],
    bodyTm: json["body_tm"],
    bodyRu: json["body_ru"],
    productCode: json["product_code"],
    price: json["price"],
    priceOld: json["price_old"],
    priceTm: json["price_tm"],
    priceTmOld: json["price_tm_old"],
    priceUsd: json["price_usd"],
    priceUsdOld: json["price_usd_old"],
    discount: json["discount"],
    isActive: json["isActive"],
    sex: json["sex"],
    isNew: json["isNew"],
    isAction: json["isAction"],
    rating: json["rating"],
    ratingCount: json["rating_count"],
    soldCount: json["sold_count"],
    likeCount: json["likeCount"],
    isNewExpire: json["is_new_expire"],
    isLiked: json["isLiked"],
    note: json["note"],
    categoryId: json["categoryId"],
    subcategoryId: json["subcategoryId"],
    brandId: json["brandId"],
    sellerId: json["sellerId"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "name_tm": nameTm,
    "name_ru": nameRu,
    "body_tm": bodyTm,
    "body_ru": bodyRu,
    "product_code": productCode,
    "price": price,
    "price_old": priceOld,
    "price_tm": priceTm,
    "price_tm_old": priceTmOld,
    "price_usd": priceUsd,
    "price_usd_old": priceUsdOld,
    "discount": discount,
    "isActive": isActive,
    "sex": sex,
    "isNew": isNew,
    "isAction": isAction,
    "rating": rating,
    "rating_count": ratingCount,
    "sold_count": soldCount,
    "likeCount": likeCount,
    "is_new_expire": isNewExpire,
    "isLiked": isLiked,
    "note": note,
    "categoryId": categoryId,
    "subcategoryId": subcategoryId,
    "brandId": brandId,
    "sellerId": sellerId,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
  };
}
