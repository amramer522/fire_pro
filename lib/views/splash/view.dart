import 'dart:async';

import 'package:fire_pro/core/logic/helper_methods.dart';
import 'package:fire_pro/views/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  List<List<String>> list = [
    [
      "https://www.state.gov/wp-content/uploads/2023/07/shutterstock_1037036482v2.jpg",
      "https://www.rjtravelagency.com/wp-content/uploads/2023/01/Cairo-1024x683.jpg",
      "https://travel.home.sndimg.com/content/dam/images/travel/stock/2016/6/27/0/GettyImages-594835943_great-pyramid-of-giza-egypt.jpg.rend.hgtvcom.1280.1280.suffix/1491841321970.jpeg",
      "https://www.rjtravelagency.com/wp-content/uploads/2023/01/Cairo-1024x683.jpg",
    ]
  ];

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      navigateTo(const LoginView(), keepHistory: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
      // body: SafeArea(
      //   child: Stack(
      //     children: [
      //
      //       SizedBox(
      //         height: 80,
      //         child: ListView.separated(
      //           scrollDirection: Axis.horizontal,
      //           reverse: true,
      //
      //           controller: ,
      //           itemBuilder: (context, index) => Container(
      //             color: Color(0xfff0fa02 * (index + 1)),
      //             height: 200,
      //             width: 130,
      //           ),
      //           separatorBuilder: (context, index) => SizedBox(width: 2),
      //           itemCount: 10,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
