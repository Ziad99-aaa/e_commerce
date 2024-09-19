import 'package:e_commerce/Api/model/Home/categoryOrBrand_response.dart';

abstract class HomeStates{}
class HomeCategoryInichialStates extends HomeStates {}
class HomeCategoryLoudingStates extends HomeStates {}

class HomeCategoryErorrStates extends HomeStates {
  String erorrMessage;
  HomeCategoryErorrStates({required this.erorrMessage});
}

class HomeCategorySuccessStates extends HomeStates {

    CategoryrOrBrandResponse response;
  HomeCategorySuccessStates({required this.response});
}

// ---------------------------
class HomeBrandInichialStates extends HomeStates {}
class HomwBrandLoudingStates extends HomeStates {}

class HomeBrandErorrStates extends HomeStates {
  String erorrMessage;
  HomeBrandErorrStates({required this.erorrMessage});
}

class HomeBrandSuccessStates extends HomeStates {

    CategoryrOrBrandResponse response;
  HomeBrandSuccessStates({required this.response});
}
