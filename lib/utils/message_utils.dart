import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_portfolio/utils/color_utils.dart';

class ToastMessageUtils{
  showSuccessMessage({required String message}){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: ColorUtils.primaryColor,
        textColor: Colors.white,
        webBgColor: '#F79422',
        webPosition: 'center',
        fontSize: 16.0
    );
  }
}