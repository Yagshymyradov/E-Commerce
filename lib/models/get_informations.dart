import 'dart:convert';
import 'package:e_commerce/models/sales_products_model.dart';
import 'package:e_commerce/models/top_products_model.dart';
import 'package:http/http.dart' as http;

import 'new_products_model.dart';
import 'one_product_model.dart';
class GetInformations {
  Future<ModelsTop> getTop() async{
    final ModelsTop modelsTop;
    final response = await http.get(Uri.parse('http://216.250.9.29:5003/public/products/top'));
    final deCode = jsonDecode(response.body);
    modelsTop = ModelsTop.fromJson(deCode);
    return modelsTop;
  }
  Future<ModelsSale> getSale() async{
    final ModelsSale modelsSale;
    final response = await http.get(Uri.parse('http://216.250.9.29:5003/public/products/action'));
    final deCode = jsonDecode(response.body);
    modelsSale = ModelsSale.fromJson(deCode);
    return modelsSale;
  }
  Future<ModelsNew> getNew() async{
    final ModelsNew modelsNew;
    final response = await http.get(Uri.parse('http://216.250.9.29:5003/public/products/new'));
    final deCode = jsonDecode(response.body);
    modelsNew = ModelsNew.fromJson(deCode);
    return modelsNew;
  }
  Future<JsonOneProduct> getOne(id) async{
    final JsonOneProduct oneProduct;
    final response = await http.get(Uri.parse('http://216.250.9.29:5003/public/products/$id'));
    final deCode = jsonDecode(response.body);
    oneProduct = JsonOneProduct.fromJson(deCode);
    return oneProduct;
  }
  Future<List> getProduct() async{
    final response = await http.get(Uri.parse('http://216.250.9.29:5003/public/products/'));
    final deCode = jsonDecode(response.body);
    return deCode;
  }
}