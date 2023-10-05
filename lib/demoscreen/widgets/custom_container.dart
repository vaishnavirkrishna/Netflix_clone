import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    required this.heading,
    this.hgt = 200,
    required this.img,
    super.key,
  });
  final String heading;
  final double hgt;
  final Image img;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        textAlign: TextAlign.left,
        heading,
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Container(
            height: hgt,
            child: img,
            width: 100,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: hgt,
            width: 100,
            child: img,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: hgt,
            width: 100,
            child: img,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Container(height: hgt, width: 100, child: img, color: Colors.black),
        ],
      ),
    ]);
  }
}
