import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getTelegramCollabrationTag(){
  return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child:   Column(
    children: [
      Row(
        children: [
          Image.asset(ImageUtils.telegram_icon,
          height: 63,
          width: 78,
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Container(
          height: 60,
          
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white10
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
              Text("Join our Telegram Page",
                              style: GoogleFonts.poppins(
                                color: ColorUtils.primaryWhiteColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              )),
                             Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                  Image.asset(ImageUtils.coin_icon,
                  height: 14,
                  width: 14,
                  ),
                   Text(" +20,000",
                                  style: GoogleFonts.poppins(
                                    color: ColorUtils.hintColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  )),
                 ],
                           ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    ],
  ),
);
}