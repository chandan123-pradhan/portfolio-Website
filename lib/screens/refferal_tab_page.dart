import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';
import 'package:my_portfolio/utils/message_utils.dart';
import 'package:my_portfolio/utils/web_urls.dart';

class RefferalTabPage extends StatefulWidget {
  const RefferalTabPage({super.key});

  @override
  State<RefferalTabPage> createState() => _RefferalTabPageState();
}

class _RefferalTabPageState extends State<RefferalTabPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _zoomInAnimation;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();

    // _animationController = AnimationController(
    //   duration: const Duration(seconds: 1),
    //   vsync: this,
    // )..forward();

    // _zoomInAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
    //   CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    // );

    // _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
    //   CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    // );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20),
                // Central Widget with Zoom In Animation
                Text(
                  "0 Referrals",
                  style: GoogleFonts.poppins(
                    color: ColorUtils.primaryWhiteColor,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "0+",
                  style: GoogleFonts.poppins(
                    color: ColorUtils.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Invite Link:",
                              style: GoogleFonts.poppins(
                                color: ColorUtils.primaryWhiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Clipboard.setData(new ClipboardData(text: WebUrls.copyUrl));
                                print("copied");
                                ToastMessageUtils().showSuccessMessage(message: 'Copied');
                              },
                              child: Icon(Icons.copy, size: 17, color: ColorUtils.primaryWhiteColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          WebUrls.copyUrl,
                          style: GoogleFonts.poppins(
                            color: ColorUtils.hintColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 0.3,
                    color: ColorUtils.hintColor,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "My Referrals:",
                              style: GoogleFonts.poppins(
                                color: ColorUtils.primaryWhiteColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "You don’t have referrals",
                            style: GoogleFonts.poppins(
                              color: ColorUtils.primaryWhiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20),
                          Image.asset(
                            ImageUtils.empty_box,
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 1.2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      
    
    );
  }
}
