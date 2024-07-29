import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/vm_home.dart';
import 'package:my_portfolio/globalvariable.dart';
import 'package:my_portfolio/screens/boosts_tab_page.dart';
import 'package:my_portfolio/screens/refferal_tab_page.dart';
import 'package:my_portfolio/screens/stats_tab_page.dart';
import 'package:my_portfolio/screens/tap_ameo_page.dart';
import 'package:my_portfolio/screens/task_tab_page.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {




  _changeTab(int index) {
    currentTab = index;
    setState(() {});
  }

  List _tabsIcon = [
    ImageUtils.refferalTabIcon,
    ImageUtils.taskTabIcon,
    ImageUtils.boosTabIcon,
    ImageUtils.statsTabIcon
  ];

  List _tabBar=[
    RefferalTabPage(),
     TaskTabPage(),
      BoostsTabPage(),
       StatsTabPage(),
  ];
var _vmHome=Get.put(VmHome());

@override
  void initState() {
_vmHome.initMethod();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height / 1,
          width: MediaQuery.of(context).size.width / 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageUtils.splash_page_bg),
                  fit: BoxFit.fill)),
          alignment: Alignment.center,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              height: MediaQuery.of(context).size.height / 1,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                   Container(
              width: MediaQuery.of(context).size.width / 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(

onTap: (){
  currentTab=-1;
  setState(() {
    
  });
},                          child: Icon(
                            Icons.clear,
                            size: 17,
                            color: ColorUtils.primaryWhiteColor,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(getTabName(),
                            style: GoogleFonts.poppins(
                              color: ColorUtils.primaryWhiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                  
                  ],
                ),
              ),
            ),

                  Container(
                    height: MediaQuery.of(context).size.height / 1.14,
                    child: currentTab==-1?
    TapAmeoPage():  _tabBar[currentTab] ,
                  ),
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for (int i = 0; i < _tabsIcon.length; i++)
                                  InkWell(
                                    onTap: () {
                                      _changeTab(i);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(

                                color:
                                
                                i!=currentTab?Colors.transparent:
                                 Colors.black,
            borderRadius: BorderRadius.circular(3),
            boxShadow:
            
            i != currentTab?[]: 
             [
              BoxShadow(
                color: Colors.yellow.withOpacity(0.6),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 2), // Shadow effect
              ),
            ],        
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Image.asset(
                                          _tabsIcon[i],
                                      height:      40,
                                          width: i == currentTab ? 50 : 40,
                                        ),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          )))
                ],
              ),
            ),
          )),
    );
  }
}
