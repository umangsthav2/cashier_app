import 'package:cashier_app_source/screens/forgot_password.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ProfileScreen extends StatelessWidget {
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
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                      "https://avatar.iran.liara.run/public",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 50),
                    child: Text(
                      "Sandip Buggati",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(primaryColor),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 05, bottom: 20),
                          child: SizedBox(
                            width: 200,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "Total Deposit",
                                suffixIcon: IconButton(onPressed: () {},icon: Icon(Icons.remove_red_eye_rounded)),
                                filled: true,
                                fillColor: Color(brandWhite),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 05, bottom: 20),
                          child: SizedBox(
                            width: 200,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: () {},icon: Icon(Icons.remove_red_eye_rounded)),
                                hintText: "Total Withdraw",
                                filled: true,
                                fillColor: Color(brandWhite),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 05, bottom: 20),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.list),
                        hintText: "Statement",
                        filled: true,
                        fillColor: Color(brandWhite),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 05, bottom: 20),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.manage_accounts_rounded),
                        hintText: "Personal Details",
                        filled: true,
                        fillColor: Color(brandWhite),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 05, bottom: 20),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.policy),
                        hintText: "Policy",
                        filled: true,
                        fillColor: Color(brandWhite),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 05, bottom: 20),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.star),
                        hintText: "Rate Cashier App",
                        filled: true,
                        fillColor: Color(brandWhite),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 05, bottom: 20),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.support_agent),
                        hintText: "Rate Cashier App",
                        filled: true,
                        fillColor: Color(brandWhite),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(primaryColor),
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(brandWhite),
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
