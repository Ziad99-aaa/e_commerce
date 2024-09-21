import 'package:e_commerce/Api/Api_manager.dart';
import 'package:e_commerce/Api/model/ProductPage/Product_States.dart';
import 'package:e_commerce/Api/model/ProductPage/product_responce.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit() : super(ProductInichialStates());
  List<Dataa> product = [];
  void getAllproduct() async {
    try {
      emit(ProductLoudingStates());
      print("lodinfg");

      var response = await Api_maneger.GetAllProduct();
      if (response.statusMsg == 'fail') {
        emit(ProductErorrStates(erorrMessage: response.message!));
        print("reeeeeeeeeeeeeeeeeeeeeee");
      } else {
        product = response.data ?? [];
        emit(ProductSuccessStates(response: response));
        print("success");
      }
    } catch (e) {
      emit(ProductErorrStates(erorrMessage: e.toString()));
    }
  }
}
