import 'package:e_commerce/Api/Api_manager.dart';
import 'package:e_commerce/Api/model/Home/HomeStates.dart';
import 'package:e_commerce/Api/model/Home/categoryOrBrand_response.dart';
import 'package:e_commerce/Api/model/Login/Login_States.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeCategoryInichialStates());
  List<Data> categories = [];
  List<Data> Brands = [];

  void getAllCategories() async {
    try {
      emit(HomeCategoryLoudingStates());
      var response = await Api_maneger.GetAllCategories();
      if (response.statusMsg == 'fail') {
        emit(HomeCategoryErorrStates(erorrMessage: response.message!));
      } else {
        categories = response.data ?? [];
        emit(HomeCategorySuccessStates(response: response));
      }
    } catch (e) {
      emit(HomeBrandErorrStates(erorrMessage: e.toString()));
    }
  }

  void getAllBrands() async {
    try {
      emit(HomwBrandLoudingStates());
      var response = await Api_maneger.GetAllBrands();
      if (response.statusMsg == 'fail') {
        emit(HomeBrandErorrStates(erorrMessage: response.message!));
      } else {
        Brands = response.data ?? [];
        emit(HomeBrandSuccessStates(response: response));
      }
    } catch (e) {
      emit(HomeBrandErorrStates(erorrMessage: e.toString()));
    }
  }
}
