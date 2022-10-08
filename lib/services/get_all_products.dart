import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product.dart';

class AllProductsService extends Api {
  Future<List<ProductModel>> getAllProducts(
      // {required bool isReverse}
  ) async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> itemsOfProducts = [];
    for (int i = 0; i < data.length; i++) {
      itemsOfProducts.add(
        ProductModel.fromJson(data[i]),
      );
    }
    // if (isReverse == true) {
    //   for (int i = 0; i < data.length; i++) {
    //     itemsOfProducts.add(
    //       ProductModel.fromJson(data[i]),
    //     );
    //   }
    // }
    // else {
    //   for (int i = 10; i >= 0; i--) {
    //     itemsOfProducts.add(
    //       ProductModel.fromJson(data[i]),
    //     );
    //   }
    // }
    return itemsOfProducts;
  }
}
