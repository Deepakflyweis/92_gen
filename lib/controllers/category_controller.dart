//
//  import 'package:get/get.dart';
// import 'package:ninety_two/api_provider/client.dart';
// import 'package:ninety_two/model/category_model.dart';
//
// class CategoryProvider extends GetxController with StateMixin<CategoryModel>{
//
//   callGetCategoryApi(){
//     Client client = Client();
//     CategoryProvider categoryProvider = CategoryProvider(client: client.init());
//     try {
//       categoryProvider.getCategory().then((value) {
//         change(value,status: RxStatus.success());
//       }
//           ,onError: (err){
//             change(null,status: RxStatus.error(err));
//           });
//     }  catch (e) {
//       change(null,status: RxStatus.error(e.toString()));
//     }
//   }
//
//   @override
//   void onInit() {
//     callGetCategoryApi();
//     super.onInit();
//   }
//
// }