import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_constant.dart';
import 'package:my_portfolio/views/widgets/skill_widget.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                              alignment: Alignment.center,
                              child: Text(
                                "𝕮",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Chandan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Pradhan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/sun.png',
                                  height: 20,
                                  width: 20,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "𝕸𝖊𝖓𝖚",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ColorConstant.yellowColor),
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.menu,
                                        size: 25,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/wave.png',
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "Hello! I'M Chandan Pradhan",
                          textStyle: const TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.yellowColor),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 1000000000000,
                      pause: const Duration(seconds: 3),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "A Software Engineer | Full Stack Mobile Application Developer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "With",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 30,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 1, color: ColorConstant.yellowColor),
                          color: Colors.grey[100]),
                      alignment: Alignment.center,
                      child: Text(
                        "4.3 Years",
                        style: TextStyle(
                            color: ColorConstant.yellowColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Experience",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 1, color: ColorConstant.yellowColor),
                        //color: Colors.grey[100]
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Resume ",
                            style: TextStyle(
                                color: ColorConstant.yellowColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.file_download_outlined,
                            color: ColorConstant.yellowColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 1, color: ColorConstant.yellowColor),
                          color: ColorConstant.yellowColor),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hire Me",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
               
                Container(
                    height: MediaQuery.of(context).size.height / 1.65,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/user_image.png',
                          height: MediaQuery.of(context).size.height / 2,
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height/5,
                          left: 75,
                          child: SkillWidget(skillName: 'Flutter',
                          image: 'assets/flutter_icon.png',
                          )
                        ),




 Positioned(
                          top: MediaQuery.of(context).size.height/2.9,
                          left: 25,
                          child:  SkillWidget(skillName: 'Swift',
                          image: 'assets/swift_icon.png',
                          ))

,

 Positioned(
                          top: MediaQuery.of(context).size.height/2,
                          left: 32,
                          child: 
                           SkillWidget(skillName: 'Kotlin',
                          image: 'assets/kotlin_icon.png',
                          ))
,





           Positioned(
                          top: MediaQuery.of(context).size.height/5,
                          right: 84,
                          child: 
                          
                           SkillWidget(skillName: 'Golang',
                          image: 'assets/golang_icon.png',
                          )
                          ),




 Positioned(
                          top: MediaQuery.of(context).size.height/2.9,
                          right: 35,
                          child:
                          
                      SkillWidget(skillName: 'SQL',
                          image: 'assets/sql_icon.png',
                          )
                     
                        )

,

 Positioned(
                          top: MediaQuery.of(context).size.height/2,
                          right: 17,
                          child: 
                          
                           SkillWidget(skillName: 'Python',
                          image: 'assets/python_icon.png',
                          )
                          ),
   


                      ],
                    )),


SizedBox(height: 30,),


const Text(

"𝔸𝕓𝕠𝕦𝕥 𝕄𝕖",
            style: TextStyle(
              color: ColorConstant.yellowColor,fontSize: 70,
              fontWeight: FontWeight.bold
            ),

),


Row(
  children: [
    Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1,color: ColorConstant.yellowColor),
        image: DecorationImage(image: AssetImage('assets/user_about.JPG'))
      ),
    ),
  ],
)


              ],
            ),
          ),
        ));
  }
}
