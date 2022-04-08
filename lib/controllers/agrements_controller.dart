

import 'package:get/get.dart';
import 'package:ninety_two/api_provider/client.dart';
import 'package:ninety_two/api_provider/provider/get_agreements_provider.dart';
import 'package:ninety_two/model/get_agreements_model.dart';

class AgreementsControllers extends GetxController with StateMixin<AgreementsModel>{
  late Rx<AgreementsModel> title;
  late Rx<AgreementsModel> subtitle;

  var agreetitle = List<CategoryId>.empty().obs;


  callGetAgreementsApi(){
    Client cclient = Client();
    GetAgreementsProvider getAgreementsProvider = GetAgreementsProvider(client : cclient.init());
    try {
      getAgreementsProvider.getAgreements().then((value) {
        change(value,status: RxStatus.success());
      }
          ,onError: (err){
            change(null,status: RxStatus.error(err));
          });
    }  catch (e) {
      change(null,status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    callGetAgreementsApi();
    super.onInit();
  }
}