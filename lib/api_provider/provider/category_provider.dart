

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ninety_two/model/category_model.dart';

class CategoryProvider{
  Dio client;

  CategoryProvider({
    required this.client,
});

  Future<Object> getCategory() async{
    try{
      Response r = await client.get("/api/agreement/agreements/624aca77a21dce5cc979bc71" );
      print(r.data);
      if(r.statusCode==200){
        return categoryModelFromJson(jsonEncode(r.data["data"][0]));

      }else{
        return Future.error(r.data["error"]);
      }

    }on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}