import 'package:flutter/material.dart';
import 'package:gradient_progress_bar/gradient_progress_bar.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:get/get.dart';

class ProgressBar extends StatelessWidget {
  final double progress;
  
  const ProgressBar({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GradientProgressIndicator(
        
        [
                Color(0xffFF9300),
                Color(0xffFFF582),
                Color(0xffFFF041),
              ], progress.clamp(0.0, 1.0),
              
              
              ),



    );
          
    //   alignment: MainAxisAlignment.center,
    //   padding: EdgeInsets.zero,
    //   width: MediaQuery.of(context).size.width / 1.2,
    //   animation: false,
    //   animationDuration: 1000,
    //   lineHeight: 10.0,
    //   backgroundColor: Colors.white10,
    //   barRadius: Radius.circular(10),
    //   percent: progress.clamp(0.0, 1.0),
    //   progressColor: ColorUtils.primaryColor,
    // );
  }
}
