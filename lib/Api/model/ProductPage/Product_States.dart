

import 'package:e_commerce/Api/model/ProductPage/product_responce.dart';

abstract class ProductStates {}

class ProductInichialStates extends ProductStates {}

class ProductLoudingStates extends ProductStates {}

class ProductErorrStates extends ProductStates {
  String erorrMessage;
  ProductErorrStates({required this.erorrMessage});
}

class ProductSuccessStates extends ProductStates {
    var response;
  ProductSuccessStates({required this.response});
}