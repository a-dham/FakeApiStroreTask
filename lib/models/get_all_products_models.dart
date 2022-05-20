import 'dart:convert';

class ProductsModel {
  final int id;
  final String title;
  final double? price;
  final String description;
  final String category;
  final String image;
  final RatingModel ratingModel;
  ProductsModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.ratingModel,
  });
  factory ProductsModel.fromjson(JsonData) {
    return ProductsModel(
      id: JsonData['id'],
      title: JsonData['title'],
      price: JsonData?['price'].toDouble(),
      description: JsonData['description'],
      category: JsonData['category'],
      image: JsonData['image'],
      ratingModel: RatingModel.fromjson(JsonData['rating']),
    );
  }
}

class RatingModel {
  final double? rate;
  final int? count;
  RatingModel({
    required this.rate,
    required this.count,
  });
  factory RatingModel.fromjson(jsonData) {
    return RatingModel(
      rate: jsonData?['rate'].toDouble(),
      count: jsonData?['count'].toInt(),
    );
  }
}
