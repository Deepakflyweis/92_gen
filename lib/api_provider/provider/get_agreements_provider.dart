

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ninety_two/model/get_agreements_model.dart';

class GetAgreementsProvider {
  Dio client;

  GetAgreementsProvider({required this.client});

  Future<AgreementsModel> getAgreements() async{
    try{
      Response r = await client.get("/agreement/agreements/624aca77a21dce5cc979bc71" );
      print(r.data);
      if(r.statusCode==200){
        return agreementsModelFromJson(jsonEncode(r.data["data"]));

      }else{
        return Future.error(r.data["error"]);
      }

    }on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}