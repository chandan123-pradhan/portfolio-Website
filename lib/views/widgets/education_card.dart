import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_constant.dart';

Widget EducationCard({required String course, required BuildContext context,required String years, required String title, required String collegeName,required String location}){
  return Container(
        //height: 200,
        width: MediaQuery.of(context).size.width/4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,

        
        ),


child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black
            ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.calendar_month,size:18,color: ColorConstant.yellowColor,),
                  SizedBox(width: 5,),
                  Text(years,
                  style: TextStyle(
                    color: ColorConstant.yellowColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                  )
                ],
              ),
            ),
          )
       
       ,Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2,color: ColorConstant.yellowColor)
            ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                 Image.asset('assets/graduate_icon.png',
                 height: 25,
                 width: 25,
                 color: ColorConstant.yellowColor,
                 ),
                  SizedBox(width: 10,),
                  Text(course,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                  )
                ],
              ),
            ),
          )
       
       
        ],
      )
   
  , SizedBox(height: 20,),
   Text(title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w800
                  ),
                  ),
SizedBox(height: 20,),
Row(
  children: [
    Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,

      ),
      alignment: Alignment.center,
      child: Image.asset('assets/school.png',
      height: 15,
      width: 15,
      color: ColorConstant.yellowColor,
      ),
    ),
    SizedBox(width: 10,),
    Text(collegeName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                  ),

  ],
),
SizedBox(height: 10,),
Row(
  children: [
    Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green[100],

      ),
      alignment: Alignment.center,
      child:Icon(Icons.location_on_outlined,size: 20,color: ColorConstant.yellowColor,)
    ),
    SizedBox(width: 10,),
    Text(location,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                  ),

  ],
),



   
    ],
  ),
),


      );
}