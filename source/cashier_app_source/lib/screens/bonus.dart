import 'package:cashier_app_source/screens/otp.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BonusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      backgroundColor: Color(brandBlack),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(bc).size.height,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(bc);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Color(brandWhite),
                      ),
                    ),
                  ),
                  Text(
                    "Complete task and",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(brandWhite),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Text(
                      "Get Bonus",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color(primaryColor),
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          "assets/icons/success.svg",
                          height: 20,
                        ),
                        title: Text(
                          "Get 50% bonus with the deposit upto 50 dollars.",
                          style: TextStyle(
                            color: Color(brandWhite),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          "assets/icons/success.svg",
                          height: 20,
                        ),
                        title: Text(
                          "Get 100% bonus with the deposit upto 50-100 dollars.",
                          style: TextStyle(
                            color: Color(brandWhite),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          "assets/icons/success.svg",
                          height: 20,
                        ),
                        title: Text(
                          "Get 50% bonus with the deposit upto 50 dollars.",
                          style: TextStyle(
                            color: Color(brandWhite),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(primaryColor),
                              width: 2,
                            ),
                          ),
                        ),
                        title: Text(
                          "Get 5 dollars free play by refering to other players.",
                          style: TextStyle(
                            color: Color(brandWhite),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(primaryColor),
                              width: 2,
                            ),
                          ),
                        ),
                        title: Text(
                          "Provide Umang with money so that he can continue this development.",
                          style: TextStyle(
                            color: Color(brandWhite),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
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
