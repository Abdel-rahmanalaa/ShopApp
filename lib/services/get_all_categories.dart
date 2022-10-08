import 'package:storeapp/helper/api.dart';
import 'package:storeapp/ui/shared/consts.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
