import 'package:cashier_app_source/screens/bonus.dart';
import 'package:cashier_app_source/screens/otp.dart';
import 'package:cashier_app_source/screens/profile.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext bc) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wallet",
          style: TextStyle(
            color: Color(brandWhite),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(primaryColor),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Color(brandWhite),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                bc,
                MaterialPageRoute(builder: (newpage) => ProfileScreen()),
              );
            },
            icon: Icon(Icons.person),
            color: Color(brandWhite),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                bc,
                MaterialPageRoute(builder: (newpage) => BonusScreen()),
              );
            },
            icon: Icon(Icons.check_circle),
            color: Color(brandWhite),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color(primaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(color: Color(brandWhite), Icons.casino),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(color: Color(brandWhite), Icons.leaderboard),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(color: Color(brandWhite), Icons.live_tv),
              onPressed: () {},
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(items: []),
      backgroundColor: Color(brandBlack),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(bc).size.height,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Top Played",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(brandWhite),
                      ),
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset("assets/images/gameImages/juwaLandscape.jpg"),
                      Image.asset("assets/images/gameImages/juwaLandscape.jpg"),
                      Image.asset("assets/images/gameImages/juwaLandscape.jpg"),
                      Image.asset("assets/images/gameImages/juwaLandscape.jpg"),
                    ],
                    options: CarouselOptions(
                      // height: 600,
                      // aspectRatio: 16 / 9,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 4),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Recently Added",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(brandWhite),
                      ),
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset("assets/images/gameImages/777juwa.png"),
                      Image.asset("assets/images/gameImages/777juwa.png"),
                      Image.asset("assets/images/gameImages/777juwa.png"),
                      Image.asset("assets/images/gameImages/777juwa.png"),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      // aspectRatio: 16 / 9,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 4),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Game of The Week",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(brandWhite),
                      ),
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset("assets/images/gameImages/777juwa.png"),
                      Image.asset("assets/images/gameImages/777juwa.png"),
                      Image.asset("assets/images/gameImages/777juwa.png"),
                      Image.asset("assets/images/gameImages/777juwa.png"),
                    ],
                    options: CarouselOptions(
                      height: 300,
                      // aspectRatio: 16 / 9,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 4),
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
