import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:my_portfolio/constants/color_constant.dart';
import 'package:my_portfolio/models/experience_model.dart';


Widget experienceCard({required BuildContext context,required ExperienceModel experienceModel}){
  return 
Padding(
  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
  child:   Container(
          width: MediaQuery.of(context).size.width/1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
  
          
          ),
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width:400,
              decoration: BoxDecoration(
color: Colors.black,
borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                 // color: Colors.white
                 image: DecorationImage(image: 
                 AssetImage(experienceModel.companyLogo)
                 
                 )
                ),
               
              ),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      Text(experienceModel.companyName,
                  style: const TextStyle(
                    color: ColorConstant.yellowColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  const SizedBox(height: 2,),
                   Row(
                     children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: Colors.white30,
                          shape: BoxShape.circle
                        ),
                        child: const Icon(Icons.location_on_outlined,color: ColorConstant.yellowColor,size:15,),
                      ),
                       Text(experienceModel.location,

                  style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.clip
                  ),
                  ),
                     ],
                   ),
                ],
              ),
              
                ]),
              ),
            )
         
      ,
      Container(
        height: 30,
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.yellow[200]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const Icon(Icons.calendar_month_rounded,size:20,color: Colors.black,),
              const SizedBox(width: 8,),
               Text("${experienceModel.fromDate} -  ${experienceModel.toDate}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                    ),
            ],
          ),
        ),
      )   
         
         
          ],
        ),

const SizedBox(height: 20,),

Row(
  children: [
    Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorConstant.yellowColor

      ),
      alignment: Alignment.center,
      child: Image.asset('assets/programmer.png',
      height: 38,
      width: 38,
      ),
    ),
    const SizedBox(width: 20,),
    Text(experienceModel.jobTitle,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600
    ),
    )
  ],
),


const SizedBox(height: 30,),
 for(int i=0;i<experienceModel.rolesAndResponsibilities.length;i++)
Column(
  children: [
   
        Row(
      children: [
        Image.asset('assets/right-arrow.png',
        height: 15,
        width: 15,
        ),
        const SizedBox(width: 20,),
        Text(experienceModel.rolesAndResponsibilities[i],
        style: const TextStyle(
          color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500
        ),
        )
      ],
    ),
    const SizedBox(height: 20,),
  ],
),




      ],
    ),
  ),
  
  
        ),
);
}