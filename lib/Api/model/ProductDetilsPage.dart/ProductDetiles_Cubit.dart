import 'package:e_commerce/Api/Api_manager.dart';
import 'package:e_commerce/Api/model/ProductDetilsPage.dart/PDStates.dart';
import 'package:e_commerce/Api/model/ProductDetilsPage.dart/pd_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetilesCubit extends Cubit<PDStates> {
  ProductDetilesCubit() : super(PDInichialStates());
  PdResponse product = PdResponse();

  void getproduct(String productID) async {
    try {
      emit(PDLoudingStates());
      print("loading pp");

      var response = await Api_maneger.getProduct(productID);

      product = response;
      emit(PDSuccessStates(response: response));
      print("success pp");
    } catch (e) {
      emit(PDErorrStates(erorrMessage: e.toString()));
      PDErorrStates(erorrMessage: e.toString()).printerorr();
    }
  }
}
