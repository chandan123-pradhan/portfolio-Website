import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_constant.dart';





class SkillWidget extends StatefulWidget {
  String skillName;
  String image;
   SkillWidget({required this.skillName,required this.image});

  @override
  State<SkillWidget> createState() => _SkillWidgetState(skillName,image);
}

class _SkillWidgetState extends State<SkillWidget> {
  String skillName;
  String image;
   _SkillWidgetState( this.skillName, this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 1, color: ColorConstant.yellowColor),
                                color: Colors.white),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
Image.asset(widget.image,
height: 30,
width: 40,
),

                                Text(
                                  widget.skillName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );
  }
}