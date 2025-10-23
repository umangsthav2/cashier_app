import 'package:cashier_app_source/screens/otp.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      backgroundColor: Color(brandBlack),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(bc).size.height,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Reset Your Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Color(primaryColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 10),
                    child: TextField(
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Registered Mobile Number",
                        filled: true,
                        fillColor: Color(brandWhite),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(primaryColor),
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(bc,MaterialPageRoute(builder: (newpage)=>OTPScreen()));
                      },
                      child: Text(
                        "Send OTP",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(brandWhite),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(primaryColor),
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          Navigator.pop(bc);
                        },
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Color(brandWhite),
                        ),
                        label: Text(
                          "Back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(brandWhite),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
