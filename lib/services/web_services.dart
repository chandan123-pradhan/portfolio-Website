import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:my_portfolio/utils/web_urls.dart';

class WebServices{
  Future<dynamic>postRequest({required var params, required String routeUrl, })async{
    try{
    
      String url=WebUrls.baseUrl+routeUrl;
      print("Requesting url= $url");
      print("Params= $params");
    var res=await http.post(Uri.parse(url),
    body: params,
   
    );
    
    print("Response is ${res.body}");
    if(res.statusCode==200){
      return json.decode(res.body);
    }else{
      return 'error';
    }
    }catch(e){
      print("Error Occured $e");
    }
  }
}