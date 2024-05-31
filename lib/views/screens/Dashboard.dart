import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_constant.dart';
import 'package:my_portfolio/constants/const_string.dart';
import 'package:my_portfolio/controllers/helper_methods.dart';
import 'package:my_portfolio/models/experience_model.dart';
import 'package:my_portfolio/views/screens/hire_me_form.dart';
import 'package:my_portfolio/views/widgets/education_card.dart';
import 'package:my_portfolio/views/widgets/experience_card.dart';
import 'package:my_portfolio/views/widgets/skill_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {


List<ExperienceModel> experiences=[];

List<String>companies=[
  'SMC Global Securities Ltd',
  'Alpha Lion Logistics',
  'Capermint Technologies Pvt Ltd',
  'Qthrust Software Solution Pvt Ltd'
];
List<String>companiesLogo=[
  'assets/smc_logo.jpeg',
  'assets/alpha_lion.jpeg',
  'assets/capermint.png',
  'assets/qthrust_logo.jpeg',
];
List<String>jobTitles=[
  'SDE-II (Software Development Engineer II)',
  'SDE-II (Software Development Engineer II)',
  'SDE-I (Software Development Engineer I)',
  'SDE-I (Software Development Engineer I)'
];
List<String>dates=[
  'June 2023-Present',
  'Nov 2022-May 2023',
  'May 2021-Aug 2022',
  'Aug 2020-Apr 2021'
];

List<String>locations=[
  ' New Delhi, Pusha Road 90001',
  ' Noida Sector 62, 201301',
  ' Iskcon Crossroad, Ahemdabad, Gujarat 380015',
  ' Gaziyabad, Uttar Pradesh 110093'
];

getExeperience(){
  for(int i=0;i<companies.length;i++){
    ExperienceModel experienceModel=ExperienceModel(jobTitle: jobTitles[i], 
    companyName: companies[i],
    fromDate: dates[i].split('-').first,
    toDate:dates[i].split('-').last, 
    rolesAndResponsibilities: 
    [
      'Develop and enhance a top-tier trading application for Android and iOS platforms using Flutter & Native Frameworks.',
      'Design and implement efficient, scalable, and robust solutions for new features, ensuring optimal performance.',
      'Collaborate with cross-functional teams to align on project goals and deliver high-quality software.',
      'Conduct code reviews to maintain high standards of code quality and best practices.',
      "Troubleshoot and resolve complex technical issues to improve the application's reliability and functionality."
    ],
    location: locations[i],
    companyLogo: companiesLogo[i]
    );
    experiences.add(experienceModel);
  }
}

String mainImageUrl='';

getImage()async{
  var ImageName=await HelperMethods().getImageUrl(StringConst.mainImageName);
  print("Image Url=$ImageName");
}


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getImage();
    getExeperience();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
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
                   MouseRegion(
  cursor: SystemMouseCursors.click,
    child: GestureDetector(
                        onTap: ()async{
                        
HelperMethods.LaunchUrl(StringConst.myResumeUrl);

                        },
                        child: Container(
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
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MouseRegion(
  cursor: SystemMouseCursors.click,
    child: GestureDetector(
                        onTap: (){
                          _showAlertBox(context);
                        },
                        child: Container(
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
                            onTap: (){},
                          )
                        ),




 Positioned(
                          top: MediaQuery.of(context).size.height/2.9,
                          left: 25,
                          child:  SkillWidget(skillName: 'Swift',
                          image: 'assets/swift_icon.png',
                          onTap: (){},
                          ))

,

 Positioned(
                          top: MediaQuery.of(context).size.height/2,
                          left: 32,
                          child: 
                           SkillWidget(skillName: 'Kotlin',
                          image: 'assets/kotlin_icon.png',
                            onTap: (){},
                          ))
,





           Positioned(
                          top: MediaQuery.of(context).size.height/5,
                          right: 84,
                          child: 
                          
                           SkillWidget(skillName: 'Golang',
                          image: 'assets/golang_icon.png',
                            onTap: (){},
                          )
                          ),




 Positioned(
                          top: MediaQuery.of(context).size.height/2.9,
                          right: 35,
                          child:
                          
                      SkillWidget(skillName: 'SQL',
                          image: 'assets/sql_icon.png',
                            onTap: (){},
                          )
                     
                        )

,

 Positioned(
                          top: MediaQuery.of(context).size.height/2,
                          right: 17,
                          child: 
                          
                           SkillWidget(skillName: 'Python',
                          image: 'assets/python_icon.png',
                            onTap: (){},
                          )
                          ),
   


                      ],
                    )),


SizedBox(height: 30,),


const Text(

"𝔸𝕓𝕠𝕦𝕥 𝕄𝕖",
            style: TextStyle(
              color: ColorConstant.yellowColor,fontSize: 50,
              fontWeight: FontWeight.bold
            ),

),

  SizedBox(height: 40,),
Padding(
  padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/20,),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // SizedBox(width: 80,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
  Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //SizedBox(width: MediaQuery.of(context).size.width/20,),
              Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1,color: ColorConstant.yellowColor),
          image: const DecorationImage(image: AssetImage('assets/user_about.JPG'))
        ),
      ),
       SizedBox(width: 40,),
      const Text(
  
  "Ꭵ ᏝᎧᏉᏋ",
              style: TextStyle(
                color: ColorConstant.yellowColor,fontSize: 25,
                fontWeight: FontWeight.bold
              ),
  
  ),
    ],
  )
     , SizedBox(height: 30,) 
     , Row(
        children: [
         // SizedBox(width: MediaQuery.of(context).size.width/20,),
  SkillWidget(skillName: 'Listeing Music',
                            image: 'assets/headphones.png',
                            onTap: (){
                              
                              HelperMethods.LaunchUrl(StringConst.myYoutubeUrl);
                            },
                            )
                            ,
                             SizedBox(width: 10,),
                            SkillWidget(skillName: 'Youtube',
                            image: 'assets/youtube.png',
                            onTap: (){},
                            )
        ],
      ),
      SizedBox(height: 20,),
      Row(
        children: [
       //   SizedBox(width: MediaQuery.of(context).size.width/20,),
  SkillWidget(skillName: 'Traveling',
                            image: 'assets/traveling.png',
                              onTap: (){},
                            ),
                             SizedBox(width: 10,)
                            ,
                            SkillWidget(skillName: 'Money',
                            image: 'assets/money.png',
                              onTap: (){},
                            )
        ],
      )
      
        ],
      )
    
    ,
   Row(
    children: [
       Container(
      height: MediaQuery.of(context).size.width/8,
      width: MediaQuery.of(context).size.width/8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white30
      ),

      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("4.3+",
          style: TextStyle(
            color: ColorConstant.yellowColor,
            fontWeight: FontWeight.w800,
            fontSize: 50
          ),
          ),
          //SizedBox(height: 0,),
          Text("Years\nExperience",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            
            fontWeight: FontWeight.w600,
            fontSize: 25
          ),
          ),

        ],
      ),
    ),
    SizedBox(width: MediaQuery.of(context).size.width/20,),
     Container(
      height: MediaQuery.of(context).size.width/8,
      width: MediaQuery.of(context).size.width/8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white30
      ),
       alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(" 30+",
          style: TextStyle(
            color: ColorConstant.yellowColor,
            fontWeight: FontWeight.w800,
            fontSize: 50
          ),
          ),
          //SizedBox(height: 0,),
          Text("Projects\nCompleted",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            
            fontWeight: FontWeight.w600,
            fontSize: 25
          ),
          ),

        ],
      ),
    )
    ],
   )
    
    
    
    ],
  ),
)
,SizedBox(height: 40,),


Padding(
 padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/20,),
  child:   Container(
    width: MediaQuery.of(context).size.width/1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white12
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
      "Chandan Pradhan is an accomplished IT professional with a strong background in software development and project management. With a proven track record of delivering high-quality software solutions, Chandan brings over five years of experience in the tech industry. He has a deep understanding of various programming languages and frameworks, which allows him to effectively tackle complex technical challenges.\nCurrently serving as a Software Engineer at Tata Consultancy Services, Chandan has been instrumental in leading multiple projects from conception to completion. His expertise in Java, Spring Boot, and Microservices has enabled him to design and implement robust, scalable applications that meet client requirements and industry standards.\nChandan's educational background includes a Bachelor's degree in Computer Science and Engineering from the Gandhi Institute for Technological Advancement. His academic achievements laid a solid foundation for his professional career, providing him with the essential skills and knowledge to excel in the fast-paced world of software development.\nThroughout his career, Chandan has demonstrated a commitment to continuous learning and professional growth. He is well-versed in Agile methodologies and has successfully managed cross-functional teams, ensuring timely delivery of projects within budget constraints. His ability to communicate effectively with both technical and non-technical stakeholders has been a key factor in his success.\nChandan's passion for technology extends beyond his professional life. He actively participates in coding competitions and hackathons, constantly honing his skills and staying updated with the latest industry trends. His dedication to innovation and excellence makes him a valuable asset to any organization.\nIn addition to his technical prowess, Chandan is known for his strong analytical and problem-solving abilities. He has a knack for identifying inefficiencies and implementing solutions that enhance operational efficiency. His proactive approach and attention to detail ensure that he consistently delivers exceptional results.\nChandan is also a collaborative team player, always willing to lend a hand to his colleagues and share his knowledge. He believes in fostering a positive and productive work environment where everyone can thrive and achieve their best.\nAs he continues to advance in his career, Chandan is focused on leveraging his skills and experience to drive impactful projects and contribute to the growth and success of his organization. His vision for the future includes exploring new technologies and methodologies that can further enhance the capabilities of the software solutions he develops.\nWith a blend of technical expertise, leadership skills, and a passion for innovation, Chandan Pradhan is well-positioned to make significant contributions to the tech industry and achieve his professional goals.",
      
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: Colors.white
        ),
      ),
    ),
  ),
),
SizedBox(height: 40,),
Container(
  height: 40,
  width: 200,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    border: Border.all(width: 1,color: ColorConstant.yellowColor)
  ),
  alignment: Alignment.center,
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Icon(Icons.file_download_outlined,color: ColorConstant.yellowColor,size:30,),
        SizedBox(width: 10,),
        Text("Contact Me",style: TextStyle(
          color: ColorConstant.yellowColor,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      ],
    ),
  ),
),
SizedBox(height: 50,),
Container(
  height: 0.2,
  color: Colors.yellow[100],
),
SizedBox(height: 40,),


Text("Education",
style: TextStyle(
  color: ColorConstant.yellowColor,
  fontSize: 35,
  fontWeight: FontWeight.w800
),
),
SizedBox(height: 40,),
Padding(
  padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/20),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      EducationCard(
        course: '10th',
        context: context,
        title: "High School Class 1st - 10th",
        collegeName: "Dhakaich High School",
        location: "Badka Dhakaich, Buxar",
        years: "2015 - 2016"
      ),
     
      EducationCard(
        course: '12th',
        context: context,
        title: "Intermidiate(I.S.C)",
        collegeName: "V.K.S University",
        location: "Dumraon 802119, Buxar",
        years: "2016 - 2018"
      ),
      EducationCard(
        course: 'B.C.A',
        context: context,
        title: "Bachellor of Computer Application",
        collegeName: "V.K.S University",
        location: "Dumraon 802119, Buxar",
        years: "2018 - 2021"
      ),
    ],
  ),
),
SizedBox(height: 40,),


Text("Exeperience",
style: TextStyle(
  color: ColorConstant.yellowColor,
  fontSize: 35,
  fontWeight: FontWeight.w800
),
),
SizedBox(height: 40,),




for(int i=0;i<experiences.length;i++)
Column(
  children: [
        MouseRegion(
  cursor: SystemMouseCursors.click,
    child: GestureDetector(
                        onTap: (){
                          String url='';
                          switch(i){
                            case 0:
                              url=StringConst.smcUrl;
                              break;
                            case 1:  
                              url=StringConst.alphalionUrl;
                              break;
                            case 2:
                              url=StringConst.capermintUrl;
                              break;
                            case 3:
                              url=StringConst.qthrustLink;    
                          }
                          HelperMethods.LaunchUrl(url);
                        },
                        child: experienceCard(context: context,
              experienceModel: experiences[i]
              ),
          ),
        ),
    SizedBox(height: 30,)
  ],
)


             ],
            ),
          ),
        ));
  }




 void _showAlertBox(BuildContext context) {
    final _mobileController = TextEditingController();
    final _emailController = TextEditingController();
    final _messageController = TextEditingController();

    showDialog(
      context: context,
      builder:(BuildContext context) {
        return HireMeForm();
      }
    );
 }


}
