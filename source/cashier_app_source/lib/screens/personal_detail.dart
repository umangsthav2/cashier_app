import 'package:cashier_app_source/screens/forgot_password.dart';
import 'package:cashier_app_source/screens/statement.dart';
import 'package:cashier_app_source/screens/welcome.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class PersonalDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      backgroundColor: Color(brandBlack),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(bc);
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Color(brandWhite),
                    ),
                  ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 05, bottom: 20),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "E-mail",
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
                        prefixIcon: Icon(Icons.date_range),
                        hintText: "Date of Birth",
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
                        prefixIcon: Icon(Icons.pin),
                        hintText: "Cash ID",
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
                        prefixIcon: Icon(Icons.pin_drop),
                        hintText: "Location",
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
                        prefixIcon: Icon(Icons.phone),
                        hintText: "Contact",
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
                      onPressed: () {
                        Navigator.pushReplacement(
                          bc,
                          MaterialPageRoute(
                            builder: (newpage) => WelcomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Save",
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
