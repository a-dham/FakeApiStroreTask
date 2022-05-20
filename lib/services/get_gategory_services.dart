import 'package:mystore/Helper/api_helper.dart';
import 'package:mystore/models/get_category.dart';

class GetCategory {
  Future<List<GetCategoryModel>> getcategory(String categoryname) async {
    List<dynamic> data = await Api().helperget(
        'https://fakestoreapi.com/products/category/${categoryname}');
    List<GetCategoryModel> categorylist = [];
    for (var items in data) {
      categorylist.add(GetCategoryModel.fromjson(items));
    }

    return categorylist;
  }
}
