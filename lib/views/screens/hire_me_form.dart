import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_constant.dart';


class HireMeForm extends StatefulWidget {
 
  @override
  State<HireMeForm> createState() => _HireMeFormState();
}

class _HireMeFormState extends State<HireMeForm> {
  final _mobileController = TextEditingController();
    final _emailController = TextEditingController();
    final _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Center(
            child: Text(
              'You Are Hiring a Expert',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width * 0.5, // 50% of screen width
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _mobileController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email ID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _messageController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      labelText: 'Message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstant.yellowColor,

                ),
                alignment: Alignment.center,
                child: Text("Submit",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,fontWeight: FontWeight.w600
                ),
                ),
              )
            ),
          ],
        );
  }
}