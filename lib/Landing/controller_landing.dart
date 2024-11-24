import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vin_sweep/Landing/model_landing.dart';
import 'package:http/http.dart' as http;

class LandingPageController extends GetxController {
  RxList<LandingModel> landingPages = <LandingModel>[].obs;
  RxBool isLoaded = false.obs;
   PageController pageControllerIndicator = PageController();
  @override
  void onReady() {
    getLandingData();
    super.onReady();
  }

  void getLandingData() async {
    var url = Uri.parse('http://212.47.65.193:8888/api/v1/landing-page');
    var response = await http.get(url, headers: {
      'Accept':'application/json',
      'Content_type':'application/json'
    });

    if (response.statusCode == 200) {
      isLoaded.value = true;
      LandingPageResponse landingPageResponse =
          LandingPageResponse.fromRawJson(response.body);
      landingPages.value = landingPageResponse.result;
    } else {

    }
  }
}

//any data in api **use async
// await  data=>server
//use http **execute api

//
//Get api in flutter not use body
//get بتوخذ هيدر بس
//   ضربه api
//   var url = Uri.parse('http://212.47.65.193:8888/api/v1/landing-page');
//     var response = await http.get(url, headers: {'Accept' : "application / json",
//     " Content_type":"application / json"
//      });
