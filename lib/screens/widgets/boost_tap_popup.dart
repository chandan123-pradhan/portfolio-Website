import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/widgets/full_energy_popup.dart';
import 'package:my_portfolio/screens/widgets/tap_now_info_popup.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';

class BoostTapPopup extends StatefulWidget {
  @override
  _BoostTapPopupState createState() => _BoostTapPopupState();
}

class _BoostTapPopupState extends State<BoostTapPopup> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    )..forward();

    _animation = Tween<Offset>(
      begin: Offset(0, 1), // Start from the bottom
      end: Offset(0, 0), // End at the center
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, -2), // Shadow effect
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
  Text("Your daily booster:",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.hintColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w500,
                                                )),
                   SizedBox(height: 21,),
                   
                     Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Left Button
                               BouncingButton(
                                  onPressed: () {
                                  Navigator.pop(context);
                                    showDialog(context: context, builder: (context){
    return TapNowInfoPopup();
   });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width / 2.8,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white10,
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
                                            Text("Tap Now",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.primaryColor,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("3/3",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.hintColor,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              
                              // Right Button
                              BouncingButton(
                                onPressed: (){
                                   Navigator.pop(context);
                                    showDialog(context: context, builder: (context){
    return FullEnergyPopup();
   });
                                },
                                child: Container(
                                    width: MediaQuery.of(context).size.width / 2.8,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white10,
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
                                            Text("Full Energy",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.primaryColor,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("3/3",
                                                style: GoogleFonts.poppins(
                                                  color: ColorUtils.hintColor,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                              
                            ],
                          ),
                        
                      SizedBox(height: 21,),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(ImageUtils.more_botton,
                              height: 49,
                              
                              
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 21,),
         
            ],
          ),
        ),
      ),
    );
  }
}
