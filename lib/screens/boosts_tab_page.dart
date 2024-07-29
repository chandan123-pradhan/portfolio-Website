import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/screens/tap_ameo_page.dart';
import 'package:my_portfolio/screens/widgets/collabration_widget.dart';
import 'package:my_portfolio/screens/widgets/getBosstersWidget.dart';
import 'package:my_portfolio/screens/widgets/telegram_collabration_widget.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';

import '../controllers/vm_home.dart';

class BoostsTabPage extends StatefulWidget {
  const BoostsTabPage({super.key});

  @override
  State<BoostsTabPage> createState() => _BoostsTabPageState();
}

class _BoostsTabPageState extends State<BoostsTabPage> with SingleTickerProviderStateMixin {


 final formatter = NumberFormat('#,###');
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GetBuilder<VmHome>(
        init: VmHome(),
        builder: (vmHomeController) {
          double progress = (vmHomeController.noOfTouches.value / vmHomeController.defaultTouches).clamp(0.0, 1.0);

          
          return Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                 Text(
                      "Boosters",
                      style: GoogleFonts.poppins(
                        color: ColorUtils.primaryWhiteColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  
                  SizedBox(height: 20),
                   Text(
                      "Your Balance:",
                      style: GoogleFonts.poppins(
                        color: ColorUtils.hintColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageUtils.coin_icon,
                          height: 33,
                          width: 33,
                        ),
                       Text(" ${ formatter.format(vmHomeController.availableBallance)}",
                                    style: GoogleFonts.poppins(
                            color: ColorUtils.primaryWhiteColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  
                  SizedBox(height: 15),
                  Text(
                      "Earn Tap Ameio rewards by completing simple tasks",
                      style: GoogleFonts.poppins(
                        color: ColorUtils.primaryWhiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  
                  SizedBox(height: 15),
                  Text(
                      "How tasks work",
                      style: GoogleFonts.poppins(
                        color: ColorUtils.primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 0.3,
                      color: ColorUtils.hintColor,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white10,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your daily booster:",
                              style: GoogleFonts.poppins(
                                color: ColorUtils.primaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                          
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  BouncingButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return TapAmeoPage();
                                      }));
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width / 2.8,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black12,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            ImageUtils.Vector_icon,
                                            height: 27,
                                            width: 20,
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Tap Now",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.primaryColor,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                "3/3",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.hintColor,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                 Container(
                                      width: MediaQuery.of(context).size.width / 2.8,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black12,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            ImageUtils.battery_icon,
                                            height: 30,
                                            width: 23,
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Full Energy",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.primaryColor,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                "3/3",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.hintColor,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  
                                ],
                              ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                   Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Boosters:",
                        style: GoogleFonts.poppins(
                          color: ColorUtils.primaryWhiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  
                  SizedBox(height: 20),
                  Column(
                    children: [
                      for(int i=0;i<vmHomeController.userConfigApiResponse!.booster.length  ;i++)
                   Column(
                    children: [

                       getBostersWidget(
                      vmHomeController.userConfigApiResponse!.booster[i].icon,
                      vmHomeController.userConfigApiResponse!.booster[i].title,
                      '${vmHomeController.userConfigApiResponse!.booster[i].amount} | Level ${vmHomeController.userConfigApiResponse!.booster[i].level}'
                    ),
                  
                  SizedBox(height: 20),
                    ],
                   )
                    ],
                  )
                 ],
              ),
            ),
          );
        }
      ),
    );
  }
}
