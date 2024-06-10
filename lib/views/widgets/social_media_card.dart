import 'package:flutter/material.dart';

Widget socialMediaCard({required String username,required String icon,required BuildContext context, required Color color }){
  return Container(
    height: 40,
    width: MediaQuery.of(context).size.width/8,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,

    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(icon,height: 30,
          width: 30,),
          SizedBox(width: 10,),
          Text(username,style: TextStyle(
            color: color,
            fontSize: 16,
            fontWeight: FontWeight.w800
          ),)
        ],
      ),
    ),
  );
}