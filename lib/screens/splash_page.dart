import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/vm_splash.dart';
import 'package:my_portfolio/screens/dashboard_page.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

var controller=Get.put(VmSplash());
@override
  void initState() {
    controller.requestLogin();
    // TODO: implement initState
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<VmSplash>(
        init: VmSplash(),
        builder: (controller) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/1,
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                  image: DecorationImage(image: 
                  
                  AssetImage(ImageUtils.splash_page_bg),
                  fit: BoxFit.fill
                  )
                ),
                alignment: Alignment.center,
                child: Image.asset(ImageUtils.splash_dog_img,
                height: MediaQuery.of(context).size.height/1.8,
                width: MediaQuery.of(context).size.width/1.2,
                ),
              ),
            Positioned(
              bottom: 10,
              child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: 
                    
                    AssetImage(ImageUtils.rectangle_card),
                    fit: BoxFit.fill
                    )
                  ),
                 child: Padding(
                   padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/55,),
                   child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Tap Ameio Token",
                      style:GoogleFonts.poppins(
                        color: ColorUtils.primaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        shadows: [
                       BoxShadow(
                         color: Colors.white.withOpacity(0.3),
                         spreadRadius: 0,
                         blurRadius: 0,
                         offset: Offset(0, 3), // changes position of shadow
                       ),
                     ],
                      )
                      ),
                      
                     Column(
                      children: [
                          Text("Will be Launched",
                      style:GoogleFonts.poppins(
                        color: ColorUtils.primaryWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                    
                     
                      )
                      ),
                       SizedBox(height: 5,),
                       Text("Tap your way through levels filled with exciting\nchallenges and obstacles",
                      textAlign: TextAlign.center,
                      style:GoogleFonts.poppins(
                        color: ColorUtils.primaryWhiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                    
                     
                      )
                      )
                      ],
                     ),
                 
                // SizedBox(height: MediaQuery.of(context).size.height/40,),
                 BouncingButton(
                  onPressed: () {
                    if(controller.isLoggedIn){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DashboardPage();
                    }));
                    }else{
                      print("Not Loggedin yet");
                    }
          },
                   child: Image.asset(ImageUtils.next_icon,
                   ),
                 )
                 
                 
                    ],
                   ),
                 ),
                ),
            ),
            ],
          );
        }
      ),
    );
  }
}