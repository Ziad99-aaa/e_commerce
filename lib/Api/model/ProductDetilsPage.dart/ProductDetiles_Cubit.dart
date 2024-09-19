// import 'package:e_commerce/Api/Api_manager.dart';
// import 'package:e_commerce/Api/model/ProductPage/Product_States.dart';
// import 'package:e_commerce/Api/model/ProductPage/product_responce.dart';
//
// import 'package:flutter_bloc/flutter_bloc.dart';
//
//
// class ProductDetilesCubit extends Cubit<ProductStates> {
//   ProductDetilesCubit() : super(ProductInichialStates());
//
//
//   void getAllproduct() async {
//     try {
//       emit(ProductLoudingStates());
//       print("loading pp");
//
//       var response = await Api_maneger.GetProductDetiles(Product.id??"");
//       if (response.statusMsg == 'fail') {
//         emit(ProductErorrStates(erorrMessage: response.message!));
//         print("reeeeeeeeeeeeeeeeeeeeeee pp");
//       } else {
//         Product = response.data ?? [];
//         emit(ProductSuccessStates(response: response));
//         print("success pp");
//       }
//     } catch (e) {
//       emit(ProductErorrStates(erorrMessage: e.toString()));
//     }
//   }
// }
