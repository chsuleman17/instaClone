import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  late double width;
  late double height;

  List<String> productImageList = [
    'assets/images/girl1.png',
    'assets/images/girl2.png',
    'assets/images/girl3.jpg',
    'assets/images/girl4.jpg',
    'assets/images/girl5.jpg',
  ];

  List<String> productNameList = [
    'Suzena',
    'Zara',
    'Sidra',
    'NOOR',
    'Musfirrah'
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          centerTitle: false,
          title: const Text(
            'Instagram',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: ImageIcon(
                AssetImage("assets/images/messenger icon.png"),
                color: Colors.black,
                size: 25,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                /// Stories Portion
                Row(
                  children: [
                    Container(
                        width: width * 0.18,
                        height: height * 0.12,
                        margin: EdgeInsets.only(left: 10),
                        decoration: new BoxDecoration(
                          border: const GradientBoxBorder(
                            gradient: LinearGradient(colors: [
                              Colors.yellow,
                              Colors.red,
                              Colors.pink
                            ]),
                          ),
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            image:
                            new ExactAssetImage('assets/images/girl6.jpg'),
                          ),
                        )),
                    Container(
                      height: height * 0.15,
                      width: width * 0.775,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: productImageList.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      new Container(
                                          width: width * 0.18,
                                          height: height * 0.12,
                                          margin: EdgeInsets.only(
                                              left: width * 0.03),
                                          decoration: new BoxDecoration(
                                            border: const GradientBoxBorder(
                                              gradient: LinearGradient(colors: [
                                                Colors.yellow,
                                                Colors.red,
                                                Colors.pink
                                              ]),
                                            ),
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                              image: new ExactAssetImage(
                                                productImageList[index],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(
                                          // top: height * 0.01,
                                            left: width * 0.05),
                                        child: Text(
                                          productNameList[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),

                /// People Post
                Container(
                  height: height,
                  width: width,
                  //  margin: EdgeInsets.only(top: height*0.01),
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                child: Card(
                                  elevation: 9.0,
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            /// profile image
                                            new Container(
                                                width: width * 0.12,
                                                height: height * 0.06,
                                                margin: EdgeInsets.only(
                                                    left: width * 0.03),
                                                decoration: new BoxDecoration(
                                                  border: const GradientBoxBorder(
                                                    gradient: LinearGradient(
                                                        colors: [
                                                          Colors.yellow,
                                                          Colors.red,
                                                          Colors.pink
                                                        ]),
                                                  ),
                                                  // border: Border.all(color: Colors.pinkAccent),
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                    image: new ExactAssetImage(
                                                        'assets/images/girl1.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                )),

                                            /// post name container
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: width * 0.02),
                                              child: Text(
                                                'Suzena',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                            ),

                                            /// more icon
                                            Container(
                                                margin: EdgeInsets.only(
                                                    left: width * 0.5),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.more_horiz,
                                                      size: 19,
                                                      color: Colors.white),
                                                )),
                                          ],
                                        ),
                                      ),

                                      /// post image
                                      SizedBox(
                                        height: 10,
                                      ),

                                      /// post image container
                                      Container(
                                        child: Image.asset(
                                          'assets/images/life-quotes-happy.jpg',
                                        ),
                                      ),

                                      /// icons row container
                                      Container(
                                        child: Row(
                                          children: [
                                            ///favourite icon
                                            Container(
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.favorite_outline_sharp,
                                                    color: Colors.white,
                                                  )),
                                            ),

                                            /// chat icon
                                            Container(
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.chat_bubble_outline,
                                                    color: Colors.white,
                                                  )),
                                            ),

                                            /// Arrow icon container
                                            Container(
                                              child: Transform.rotate(
                                                angle: -pi / 4,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.send_outlined,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ),

                                            /// book mark icon
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: width * 0.44),
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.bookmark_border,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),

                                      /// likes text container
                                      Container(
                                        margin: const EdgeInsets.only(right: 90),
                                        child: Text(
                                          'Liked by syedareeba50 and 790,947329 0ther',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      /// name container
                                      Container(
                                        margin: EdgeInsets.only(top: height * 0.01),
                                        child: Row(
                                          children: [
                                            /// view text container
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: width * 0.036),
                                              child: Text(
                                                'Suzena',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            // Container(
                                            //   margin: EdgeInsets.only(left: width*0.02),
                                            //   child: Icon(Icons.star_border_outlined,
                                            //     color: Colors.white,
                                            //     size: 15,
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: width * 0.034),
                                              child: Text(
                                                'View all 20,4632 comments',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      /// time text container
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: height * 0.01,
                                                  left: width * 0.034),
                                              child: Text(
                                                '1 hour ago',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}