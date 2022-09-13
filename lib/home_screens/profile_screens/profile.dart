import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      body: MyProfileSTF(),
    );
  }
}

class MyProfileSTF extends StatefulWidget {
  const MyProfileSTF({Key? key}) : super(key: key);

  @override
  State<MyProfileSTF> createState() => _MyProfileSTFState();
}

class _MyProfileSTFState extends State<MyProfileSTF> {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: height*0.01),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: width*0.05),
                    child: Text(
                      'snazzyanaps9',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                          color: Colors.black
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_drop_down_outlined,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    height: height*0.04,
                    width: width*0.07,
                    margin: EdgeInsets.only(left: width*0.18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 2.0,
                          color: Colors.black
                      ),
                    ),
                    child: Container(
                      child: Icon(Icons.add,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.format_list_bulleted_outlined,
                                color: Colors.black,
                                size: 30,
                              )),
                        ),
                        Container(
                          width: width*0.068,
                          height: height*0.038,
                          margin: EdgeInsets.only(left: width*0.065,top: height*0.004),
                          child: Card(
                            elevation: 9.0,
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0)
                            ),
                            child: Center(
                              child: Text(
                                '9',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        new Container(
                            width: width*0.25,
                            height: height*0.15,
                            margin: EdgeInsets.only(left: width*0.04, top: height*0.03),
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                image: new ExactAssetImage(
                                    'assets/images/girl1.png'),
                                fit: BoxFit.cover,
                              ),
                            )),
                        new Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.06),
                          child: Text(
                            'Snazzy Snaps \nAlhamdulilah...',
                            style: TextStyle(
                              color: Colors.black,
                              //   fontSize: 12
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width*0.06),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.01),
                          child: Text(
                            'Posts',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width*0.06),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '12,846',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.01),
                          child: Text(
                            'Followers',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width*0.06),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '389',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.01),
                          child: Text(
                            'Following',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: width*0.04,top: height*0.05),
              child: Row(
                children: [
                  Container(
                    width: width*0.4,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        'Edit Profile',style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: width*0.4,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        'Insights',style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.person_add_outlined,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Container(
              //  margin: EdgeInsets.only(top: height*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.grid_on_outlined,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    child: IconButton(
                        color: Colors.grey,
                        onPressed: (){},
                        icon: Icon(Icons.person_pin_sharp,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: height*0.13),
              child: Center(
                child: Text(
                  'Not Posts Yet!',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}