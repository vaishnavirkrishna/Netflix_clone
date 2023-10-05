import 'package:flutter/material.dart';
import 'package:netflix/utils/image_constant/imageconstant.dart';
import 'package:netflix/view/design/design.dart';

import '../../utils/database/databaseImage.dart';

class UserName extends StatelessWidget {
  const UserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: SizedBox(
            height: 37,
            width: double.maxFinite,
            child: Image.asset("assets/images/logoH.png"),
          ),
          backgroundColor: Colors.black,
          actions: [Image.asset("assets/images/pencil.png")],
        ),
        body: Column(
          children: [
            Expanded(
                child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: DataBaseImage.gridImages.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Design(),
                    )),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 93,
                      child: Image.asset(
                        DataBaseImage.gridImages.values.toList()[index],
                      ),
                    ),
                    Text(
                      Name.name[index],
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            )),
            SizedBox(
              height: 5,
            ),
          ],
        ));
  }
}
