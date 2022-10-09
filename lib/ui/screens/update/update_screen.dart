import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/update_product.dart';
import 'package:storeapp/ui/screens/update/components/custom_text_field.dart';
import 'package:storeapp/ui/shared/consts.dart';

class UpdateProductScreen extends StatefulWidget {
  static String id = 'update product';

  const UpdateProductScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? productName, desc, image;

  String? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: transparentColor,
          elevation: zero,
          leading: const BackButton(
            color: blackColor,
          ),
          title: Text(
            updateProductText,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding_16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: defaultPadding_16 * 9,
                ),
                CustomTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: productNameHintText,
                ),
                const SizedBox(
                  height: defaultPadding_16,
                ),
                CustomTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: descriptionHintText,
                ),
                const SizedBox(
                  height: defaultPadding_16,
                ),
                CustomTextField(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: priceHintText,
                  inputType: TextInputType.number,
                ),
                const SizedBox(
                  height: defaultPadding_16,
                ),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: imageHintText,
                ),
                const SizedBox(
                  height: defaultPadding_16 * 5,
                ),
                Center(
                  child: SizedBox(
                    width: size_200,
                    height: size_48,
                    child: ElevatedButton(
                      onPressed: () async {
                        isLoading = true;
                        setState(() {});
                        await updateProduct(product);
                        try {

                          print(successText);
                        } catch (e) {
                          print(e.toString());
                        }
                        isLoading = false;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(updateTextButton),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateServices().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        description: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
