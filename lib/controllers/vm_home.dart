import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_portfolio/controllers/vm_splash.dart';
import 'package:my_portfolio/models/get_stats_api_response.dart';
import 'package:my_portfolio/models/login_api_response.dart';
import 'package:my_portfolio/models/user_config_api_response.dart';
import 'package:my_portfolio/services/web_services.dart';
import 'package:my_portfolio/utils/string_utils.dart';
import 'package:my_portfolio/utils/web_urls.dart';

class VmHome extends GetxController {
  var splashController = Get.put(VmSplash());
  WebServices _webServices = WebServices();
  DateTime _lastTouches = DateTime.now();
  UserConfigApiResponse? userConfigApiResponse;
  GetStatsApiResponse? getStatsApiResponse;
  int noOfCount = 0;
  RxInt noOfTouches = 0.obs;
  double availableBallance = 0;
  int defaultTouches = 0;
  int perTap = 0;

  initMethod() {
    getUserConfig();
    availableBallance =
        double.parse(splashController.loginApiResponse.data.balance);

    update();
    _increaseTouchesWhileNoTouching();
    _getStats();
  }

  updateTouches() {
    if (noOfTouches != 0) {
      noOfTouches.value -= perTap;
      _lastTouches = DateTime.now();
      availableBallance+=perTap;
      update();
      noOfCount++;
    }
  }

  _increaseTouches() {
    if (noOfTouches != defaultTouches) {
      noOfTouches.value += perTap;
      update();
    }
  }

  _increaseTouchesWhileNoTouching() {
    print("decrease called");

    Timer.periodic(const Duration(seconds: 1), (timer) {
      // Check if _lastTouches is more than 1 minute ago
      if (DateTime.now().difference(_lastTouches).inSeconds > 2) {
        // Your code here
        _increaseTouches();
        if (noOfCount > 0) {
          print("update api calling");
          requestUpdateTapNow(noOfCount);
        }
      } else {
        print("not done");
      }
    });
  }

  void getUserConfig() async {
    Map params = {
      StringUtils.userToken:
          splashController.loginApiResponse.data.userToken.toString(),
    };
    var res = await _webServices.postRequest(
        params: params, routeUrl: WebUrls.userConfigRouteUrl);
    if (res != null) {
      print("Error here");
      print(res);
      userConfigApiResponse = UserConfigApiResponse.fromJson(res);
      perTap = int.parse(userConfigApiResponse!.data.perTap);
      noOfTouches.value = int.parse(userConfigApiResponse!.data.perMinute);
      defaultTouches = noOfTouches.value;
    } else {
      print("Error occured in getUserConfigMethod");
    }
    update();
  }

  void requestUpdateTapNow(count) async {
    noOfCount = 0;
    Map params = {
      StringUtils.userToken:
          splashController.loginApiResponse.data.userToken.toString(),
      StringUtils.touch: userConfigApiResponse!.data.perTap,
      StringUtils.amount:
          (count * int.parse(userConfigApiResponse!.data.perTap)).toString()
    };
    var res = await _webServices.postRequest(
        params: params, routeUrl: WebUrls.tapNowRouteUrl);
    if (res != null) {
      print(res);
      userConfigApiResponse = UserConfigApiResponse.fromJson(res);
      noOfCount = 0;
    } else {
      print("Error occured in getUserConfigMethod");
    }
    update();
  }

  void _getStats() async {
    Map params = {
      StringUtils.userToken:
          splashController.loginApiResponse.data.userToken.toString(),
    };
    var res = await _webServices.postRequest(
        params: params, routeUrl: WebUrls.statsRouteUrl);
    if (res != null) {
      print(res);
      getStatsApiResponse=GetStatsApiResponse.fromJson(res);
    } else {
      print("Error occured in getUserConfigMethod");
    }
    update();
  }
}
