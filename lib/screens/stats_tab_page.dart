import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';
import '../controllers/vm_home.dart';

class StatsTabPage extends StatefulWidget {
  const StatsTabPage({super.key});

  @override
  State<StatsTabPage> createState() => _StatsTabPageState();
}

class _StatsTabPageState extends State<StatsTabPage> with SingleTickerProviderStateMixin {


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

          return Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                    "Total Share Balance",
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
                
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 0.3,
                    color: ColorUtils.hintColor,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                    "Total Touches:",
                    style: GoogleFonts.poppins(
                      color: ColorUtils.hintColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                
               Text(
                    "${vmHomeController.getStatsApiResponse!.data.totalTouches}",
                    style: GoogleFonts.poppins(
                      color: ColorUtils.primaryWhiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                
                SizedBox(height: 20),
                Text(
                    "Total Players:",
                    style: GoogleFonts.poppins(
                      color: ColorUtils.hintColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                
                 Text(
                    "${vmHomeController.getStatsApiResponse!.data.totalPlayer}",
                    style: GoogleFonts.poppins(
                      color: ColorUtils.primaryWhiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                
                SizedBox(height: 20),
                Text(
                    "Daily Users:",
                    style: GoogleFonts.poppins(
                      color: ColorUtils.hintColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                
                Text(
                    "${vmHomeController.getStatsApiResponse!.data.dailyUser}",
                    style: GoogleFonts.poppins(
                      color: ColorUtils.primaryWhiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                
                SizedBox(height: 20),
              Text(
                    "Online Players:",
                    style: GoogleFonts.poppins(
                      color: ColorUtils.hintColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                
                Text(
                    "${vmHomeController.getStatsApiResponse!.data.onlinePlayer}",
                    style: GoogleFonts.poppins(
                      color: ColorUtils.primaryWhiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
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
