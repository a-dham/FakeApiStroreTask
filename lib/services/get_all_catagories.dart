import 'package:http/http.dart' as http;
import 'package:mystore/Helper/api_helper.dart';

class GetAllCatagoriesServies {
  Future<dynamic> allcatagories() async {
    var data = Api().helperget('https://fakestoreapi.com/products/categories');

    return data;
  }
}
