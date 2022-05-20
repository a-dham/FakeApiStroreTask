import 'package:http/http.dart' as http;

class GetCategoryModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String catagorey;
  final String image;
  GetCategoryModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.catagorey,
    required this.image,
  });
  factory GetCategoryModel.fromjson(jsonData) {
    return GetCategoryModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        catagorey: jsonData['catagorey'],
        image: jsonData['image']);
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromjson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
