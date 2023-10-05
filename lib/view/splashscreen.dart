import 'package:flutter/material.dart';
import 'package:netflix/view/username/username.dart';

import '../utils/image_constant/imageconstant.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => UserName())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 55,
          width: 207,
          child: Image.asset(ImageConstant.netflixLogo),
        ),
      ),
    );
  }
}
