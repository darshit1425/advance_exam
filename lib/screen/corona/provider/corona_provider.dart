import 'package:advance_exam/screen/corona/model/corona_model.dart';
import 'package:advance_exam/utils/api_helper.dart';
import 'package:flutter/material.dart';

class Corona_Provider extends ChangeNotifier {

  Future<corona_model> GetApi() async {


    Apihelper apihelper = Apihelper();

    corona_model coronaModel = await apihelper.getCoronaApi();


    return coronaModel;
  }
}
