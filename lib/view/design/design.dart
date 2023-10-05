import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix/utils/database/databaseImage.dart';
import 'package:netflix/utils/image_constant/imageconstant.dart';
import 'package:netflix/view/movies_list/movieslist.dart';

import '../../demoscreen/widgets/custom_container.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    List<String> popularImg = [
      "https://th.bing.com/th/id/OIP.QslOMeWOeqIgm7R3MKZKgAHaK_?w=182&h=270&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://th.bing.com/th/id/OIP.rd_MDgipZGQA1iAM8-9_8QHaK9?w=182&h=270&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://th.bing.com/th/id/OIP.KB4lF4FKpdLxFB4CiaxlCwHaEH?w=275&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://r.bing.com/rp/zYRmeqAEd4Z0yDRz8nuL0syHMEI.svg",
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 60, 56, 56),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_emergency,
                  color: Colors.black,
                ),
                label: "continue"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                  color: Colors.black,
                ),
                label: "Download"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more,
                  color: Colors.black,
                ),
                label: "more"),
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
                items: List.generate(
                    imge.length,
                    (index) => Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imge[index]),
                                  fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                            "assets/images/nn.png")),
                                    Text(
                                      "TV Shows",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    Text(
                                      "Movies",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    Text(
                                      "My List",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                  ]),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "2 in Nigeria Today",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "play",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Column(
                  children: [
                    Icon(
                      Icons.info,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      "info",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Previews",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 5,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: cirImages.length,
                itemBuilder: (context, index) => CircleAvatar(
                  backgroundImage: NetworkImage(cirImages[index]),
                  radius: 62,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieList(),
                        )),
                    child: NewWidget(
                        heading: "Popular ON Netflix",
                        hgt: 300,
                        img: Image.network(
                          popularImg[0],
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NewWidget(
                      hgt: 150,
                      heading: "Trending Now",
                      img: Image.network(trending[0])),
                  SizedBox(
                    height: 10,
                  ),
                  NewWidget(
                    heading: "Continue Watching",
                    img: Image.network(
                      "https://th.bing.com/th/id/OIP.C0nkWbY0yB2shLHI3QuFswHaFj?w=223&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
