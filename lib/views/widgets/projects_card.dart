import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_constant.dart';

Widget ProjectCard(
    {required String project_name,
    required BuildContext context,
    required String description,
    }) {
  return Container(
   // height: 120,
    width: MediaQuery.of(context).size.width / 4,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: 
          Row(
            children: [
              Image.asset('assets/smartphone.png',
              height: 100,
              width: 80,
              ),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project_name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                    ),
                    ),
                    SizedBox(height: 10,),
                      Container(
                        height: 50,
                        child: Text(description,
                                            style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                                            ),
                                            ),
                      ),
                     SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Learn More",
                          textAlign: TextAlign.end,
                          
                    style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w800
                    ),
                    ),
                        ],
                      )
                  ],
                ),
              )
            ],
          )
        
      
    ),
  );
}
