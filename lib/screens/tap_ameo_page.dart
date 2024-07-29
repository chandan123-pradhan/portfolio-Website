import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/controllers/vm_home.dart';
import 'package:my_portfolio/screens/widgets/boost_tap_popup.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';
import 'package:my_portfolio/screens/widgets/animated_botton.dart';
import 'package:my_portfolio/screens/widgets/progress_bar.dart';

class TapAmeoPage extends StatefulWidget {
  const TapAmeoPage({super.key});

  @override
  State<TapAmeoPage> createState() => _TapAmeoPageState();
}

class _TapAmeoPageState extends State<TapAmeoPage> with SingleTickerProviderStateMixin {
  var vm_home = Get.put(VmHome());
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

          return   
          vmHomeController.userConfigApiResponse==null?Center(
            child: CircularProgressIndicator(
              color: ColorUtils.primaryColor,
            ),
          ):
          
          Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageUtils.splash_page_bg),
                    fit: BoxFit.fill,
                  ),
                ),
                alignment: Alignment.center,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Left Button
                            BouncingButton(
                                  onPressed: () {},
                                  child: 
                                  
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2.8,
                                   // height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Earn per tap",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.primaryColor,
                                                  fontSize:16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          SizedBox(height: 5,),
                                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImageUtils.coin_icon,
                                    height: 15,
                                    width: 15,
                                  ),
                                   SizedBox(width: 3,),
                               Text("+2",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.hintColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                ],
                              ),
                                            
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              
                              // Right Button
                           
                                
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    // height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Coins to level up",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.PurpuleColor,
                                                  fontSize:16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          SizedBox(height: 3,),
                                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                               Text("25K",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.hintColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                ],
                              ),
                                            
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                          
                              
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                       Column(
                            children: [
                              Text("Your Balance:",
                                  style: GoogleFonts.poppins(
                                    color: ColorUtils.hintColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImageUtils.coin_icon,
                                    height: 33,
                                    //width: 33,
                                  ),
                                  Text(" ${ formatter.format(vmHomeController.availableBallance)}",
                                      style: GoogleFonts.poppins(
                                        color: ColorUtils.primaryWhiteColor,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        
                        SizedBox(height: 20),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: ProgressBar(progress: progress),
                          ),
                        
                        SizedBox(height: 50),
                       AnimatedCircleButton(),
                        
                        SizedBox(height: 92),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      ImageUtils.energy,
                                      height: 44,
                                      width: 44,
                                    ),
                                    Text(
                                        "${vmHomeController.noOfTouches.value}/${vmHomeController.userConfigApiResponse!.data.perMinute}",
                                        style: GoogleFonts.poppins(
                                          color: ColorUtils.primaryWhiteColor,
                                          fontSize: 21,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                              
                             InkWell(
                                  onTap: (){
                                    _showCustomPopup(context);
                                  },
                                  child: Image.asset(
                                    ImageUtils.boostWidget,
                                    height: 42,
                                    width: 100.85,
                                  ),
                                ),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              
            
          );
        },
      ),
    );
  }


  void _showCustomPopup(BuildContext context) {
   showDialog(context: context, builder: (context){
    return BoostTapPopup();
   });
  }
}

