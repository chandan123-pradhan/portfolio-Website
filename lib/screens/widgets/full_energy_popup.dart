import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';

class FullEnergyPopup extends StatefulWidget {
  @override
  _FullEnergyPopupState createState() => _FullEnergyPopupState();
}

class _FullEnergyPopupState extends State<FullEnergyPopup> with SingleTickerProviderStateMixin {
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
        child: Stack(
          children: [

            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 32),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Adjust opacity for shadow depth
                    spreadRadius: 4,
                    blurRadius: 12,
                    offset: Offset(0, 4), // X and Y offset of the shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            
                  Image.asset(
            ImageUtils.battery,
            height: 63,
            width: 90,
            
                  ),
                  SizedBox(height: 20,),
              Text("Full Battery",
                                                    style: GoogleFonts.poppins(
                                                      color: ColorUtils.hintColor,
                                                      fontSize: 25,
                                                      fontWeight: FontWeight.w500,
                                                    )),
                       SizedBox(height: 21,),
                       
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
              textAlign: TextAlign.center,
                                                    style: GoogleFonts.poppins(
                                                      color: ColorUtils.hintColor,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w400,
                                                    )),
                       SizedBox(height: 21,),
                       
                         Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        ImageUtils.coin_icon,
                                        height: 22.5,
                                        width: 22.5,
                                        //width: 33,
                                      ),
                                      Text(" 200",
                                          style: GoogleFonts.poppins(
                                            color: ColorUtils.primaryWhiteColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          )),
                                   Text("  |  Level",
                                          style: GoogleFonts.poppins(
                                            color: ColorUtils.hintColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          )),
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
                                  child: Image.asset(ImageUtils.get_it_botton,
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
       
       Positioned(
        top: 20,
        right: 50,
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.clear,size:25,color: ColorUtils.hintColor,)))
       
          ],
        ),
      ),
    );
  }
}
