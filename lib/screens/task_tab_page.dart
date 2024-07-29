import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/screens/widgets/collabration_widget.dart';
import 'package:my_portfolio/screens/widgets/telegram_collabration_widget.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';

import '../controllers/vm_home.dart';

class TaskTabPage extends StatefulWidget {
  const TaskTabPage({super.key});

  @override
  State<TaskTabPage> createState() => _TaskTabPageState();
}

class _TaskTabPageState extends State<TaskTabPage> with SingleTickerProviderStateMixin {

 final formatter = NumberFormat('#,###');
  @override
  void initState() {
    super.initState();

    }

  @override
  void dispose() {
  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GetBuilder<VmHome>(
        init: VmHome(),
        builder: (vmHomeController) {
          double progress = (vmHomeController.noOfTouches.value / vmHomeController.defaultTouches).clamp(0.0, 1.0);

          
          return  Container(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                      "Task",
                      style: GoogleFonts.poppins(
                        color: ColorUtils.primaryWhiteColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  
                  SizedBox(height: 20),
                  Text(
                      "Your Balance:",
                      style: GoogleFonts.poppins(
                        color: ColorUtils.hintColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageUtils.coin_icon,
                          height: 33,
                          width: 33,
                        ),
                       Text(" ${ formatter.format(vmHomeController.availableBallance)}",
                                      style: GoogleFonts.poppins(
                            color: ColorUtils.primaryWhiteColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    
                  ),
                  SizedBox(height: 15),
                  Text(
                      "Earn Tap Ameio rewards by completing simple tasks",
                      style: GoogleFonts.poppins(
                        color: ColorUtils.primaryWhiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  
                  SizedBox(height: 15),
                  Text(
                      "How tasks work",
                      style: GoogleFonts.poppins(
                        color: ColorUtils.primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 0.3,
                      color: ColorUtils.hintColor,
                      width: MediaQuery.of(context).size.width / 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          ImageUtils.task_tag_icon,
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          getTelegramCollabrationTag(),
                          
                          SizedBox(height: 20),
                           getInstagramCollabrationTag(),
                          
                          SizedBox(height: 20),
                          getTelegramCollabrationTag(),
                          
                          SizedBox(height: 20),
                          getInstagramCollabrationTag(),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            
          );
        }
      ),
    );
  }
}
