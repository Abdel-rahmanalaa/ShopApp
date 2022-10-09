import 'package:http/http.dart';
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/ui/shared/consts.dart';

class AddProductServices {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, String> body = {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    };
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: body,
    );
    return ProductModel.fromJson(data);
  }
}
