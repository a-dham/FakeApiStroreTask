import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:mystore/Helper/api_helper.dart';
import 'package:mystore/models/get_all_products_models.dart';

class AddProduct {
  Future<ProductsModel> addproduct({
    required String title,
    required int price,
    required String descreption,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: "https://fakestoreapi.com/products",
      body: {
        'title': title,
        'price': price,
        'description': descreption,
        'image': image,
        'category': category,
      },
    );

    return ProductsModel.fromjson(data);
  }
}
