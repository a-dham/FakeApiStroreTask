import 'package:mystore/Helper/api_helper.dart';
import 'package:mystore/models/get_all_products_models.dart';

class UpdateProduct {
  Future<ProductsModel> update({
    required int id,
    required String title,
    required int price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().update(
      url: 'https://fakestoreapi.com/products/${id}',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );

    return ProductsModel.fromjson(data);
  }
}
