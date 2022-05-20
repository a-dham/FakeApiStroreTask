import 'package:mystore/models/get_all_products_models.dart';
import 'package:mystore/Helper/api_helper.dart';

class ProductsService {
  Future<List<ProductsModel>> getallproducts() async {
    List<dynamic> data =
        await Api().helperget('https://fakestoreapi.com/products');
    List<ProductsModel> productlist = [];
    for (var products in data) {
      productlist.add(ProductsModel.fromjson(products));
    }
    return productlist;
  }
}
