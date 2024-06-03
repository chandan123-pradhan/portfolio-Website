import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_constant.dart';
import 'package:my_portfolio/controllers/helper_methods.dart';


class SuccessPopup extends StatefulWidget {
 
  @override
  State<SuccessPopup> createState() => _SuccessPopupState();
}

class _SuccessPopupState extends State<SuccessPopup> {

void submit(){
  Navigator.pop(context);
  
}

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Center(
            child: Text(
              'Message Sent Successfully Done!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width * 0.5, // 50% of screen width
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 70,),
                  Image.asset('assets/check.png',
                  fit: BoxFit.fill,
                  height: 250,
                  )
                 ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: InkWell(
                onTap: (){
                 submit();
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstant.yellowColor,
              
                  ),
                  alignment: Alignment.center,
                  child: Text("Ok",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,fontWeight: FontWeight.w600
                  ),
                  ),
                ),
              )
            ),
          ],
        );
  }
}