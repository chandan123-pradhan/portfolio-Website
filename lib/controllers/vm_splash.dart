import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_portfolio/models/login_api_response.dart';
import 'package:my_portfolio/services/web_services.dart';
import 'package:my_portfolio/utils/string_utils.dart';
import 'package:my_portfolio/utils/web_urls.dart';

class VmSplash extends GetxController {
  late LoginApiResponse loginApiResponse;
  bool isLoggedIn=false;
  WebServices _webServices= WebServices();
  void requestLogin()async{
    Map params={
      StringUtils.userToken:'26',
      StringUtils.name:'Mukesh Yadav'
    };
   var res=await _webServices.postRequest(params: params, routeUrl: WebUrls.loginRouteUrl);
   if(res!=null){
    print("response has been successfuly done");
    loginApiResponse=LoginApiResponse.fromJson(res);
   isLoggedIn=true;
   }else{
    isLoggedIn=false;
   }
   update();


  }
}