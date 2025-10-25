import 'package:cashier_app_source/screens/home.dart';
import 'package:cashier_app_source/screens/personal_detail.dart';
import 'package:cashier_app_source/screens/statement.dart';
import 'package:cashier_app_source/screens/success.dart';
import 'package:cashier_app_source/screens/welcome.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class GameScreen extends StatelessWidget {
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
                  Image.asset("assets/images/gameImages/juwaLandscape.jpg"),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 50),
                    child: Text(
                      "Karki's Juwa",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(primaryColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 05, bottom: 20),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(primaryColor),
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {
                        Navigator.push(
                          bc,
                          MaterialPageRoute(
                            builder: (newpage) => PersonalDetailScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.gamepad, color: Color(brandWhite)),
                      label: Text(
                        "Play Game",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(brandWhite),
                        ),
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
                            width: 150,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 05,
                                    bottom: 20,
                                  ),
                                  child: OutlinedButton.icon(
                                    style: OutlinedButton.styleFrom(
                                      // backgroundColor: Color(primaryColor),
                                      side: const BorderSide(
                                        color: Color(primaryColor),
                                        width: 2,
                                      ),
                                      minimumSize: Size(double.infinity, 50),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        bc,
                                        MaterialPageRoute(
                                          builder: (newpage) =>
                                              StatementScreen(),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.download,
                                      color: Color(brandWhite),
                                    ),
                                    label: Text(
                                      "Load",
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 05, bottom: 20),
                          child: SizedBox(
                            width: 150,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 05,
                                    bottom: 20,
                                  ),
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(primaryColor),
                                      minimumSize: Size(double.infinity, 50),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        bc,
                                        MaterialPageRoute(
                                          builder: (newpage) =>
                                              StatementScreen(),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.upload,
                                      color: Color(brandWhite),
                                    ),
                                    label: Text(
                                      "Withdraw",
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
                    ],
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 05, bottom: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 05),
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.attach_money),
                                  hintText: "Amount",
                                  filled: true,
                                  fillColor: Color(brandWhite),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8, left: 3),
                                child: Text(
                                  "Minimum Amount: \$10",
                                  style: TextStyle(color: Color(brandRed)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 05, bottom: 20),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.attach_money),
                        hintText: "03525001549051",
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
                            builder: (newpage) => SuccessScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Proceed",
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
