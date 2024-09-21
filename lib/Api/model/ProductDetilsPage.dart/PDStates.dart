import 'dart:math';

import 'package:e_commerce/Api/model/ProductPage/product_responce.dart';

abstract class PDStates {}

class PDInichialStates extends PDStates {}

class PDLoudingStates extends PDStates {}

class PDErorrStates extends PDStates {
  String erorrMessage;
  PDErorrStates({required this.erorrMessage});
  printerorr() {
    print(erorrMessage);
  }
}

class PDSuccessStates extends PDStates {
  var response;

  PDSuccessStates({required this.response});
}
