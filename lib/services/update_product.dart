import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class UpdateServices {
  Future<ProductModel> updateProduct(
      {required int id,
      required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    print('product id = $id');
    Map<String, String> body = {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    };
    Map<String, dynamic> data = await Api().put(

      url: 'https://fakestoreapi.com/products/$id',
      body: body,
    );
    return ProductModel.fromJson(data);
  }
}
