import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';
class SecondScreen extends StatelessWidget{


  ProductController productController = Get.put(
    ProductController(
      productModel: ProductModel(name: "coca",price: "90",off: "0").obs
    )
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
          body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx((){
                return Column(
                  children: [
                    Text("product name: ${productController.productModel.value.name}",style: const TextStyle(fontSize: 20),),
                    Text("product price: ${productController.productModel.value.price}",style: const TextStyle(fontSize: 20),),
                    Text("product off: ${productController.productModel.value.off}",style: const TextStyle(fontSize: 20),),
                  ],
                );
              }),
              ElevatedButton(
                onPressed: (){
                  productController.productModel.update(
                    (val) {
                      val!.name = "coca cola";
                      val.price = "5";
                      val.name = "10";
                    }
                  );
                }, 
                child: const Text("press")
              ),
              ElevatedButton(
                onPressed: (){
                  Get.back();
                }, 
                child: const Text("back")
              ),
            ],
          ),
        ),
      )
    );
  }

}