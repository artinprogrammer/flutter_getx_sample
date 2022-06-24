import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductController extends GetxController{
  // Rx model:
  Rx<ProductModel> productModel;


  ProductController({required this.productModel});

}