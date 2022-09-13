import 'package:flutter/material.dart';
import 'package:insta/home_screens/home_screen.dart';
import 'package:insta/home_screens/profile_screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;
  void navigateBottomBar(int index){
    setState((){
      selectedIndex = index;
    });}
  final List<Widget> pages = [
    ///homePAge all data
    homePage(),
    /// chat screen data
    Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                'Chat page',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),

    ///setting container
    Scaffold(

      appBar: AppBar(
        title: Text("Setting",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),

      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  /// Manage my profile

                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.person,
                          color: Colors.blue,
                          size: 30,),
                      ),
                      SizedBox(width: 25,),
                      Container(

                        child: Text('Manage My Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),),
                      ),


                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),

                  /// Change languagae
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.translate,
                          color: Colors.yellow.shade500,
                          size: 30,),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        child: Text('Change Language',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),



                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),

                  ///update password
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.lock,
                          color: Colors.red,
                          size: 30,),
                      ),
                      SizedBox(width: 25,),

                      Container(
                        child: Text(
                          'Update Password',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),

                      ),




                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),

                  ///About us

                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.people_rounded,
                          color: Colors.green,
                          size: 30,),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        child: Text('About Us',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),
                  ///Term of services


                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.list,
                          color: Colors.yellow.shade500,
                          size: 30,),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        child: Text('Terms of Service',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),
                  ///privacy policy
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.privacy_tip,
                          color: Colors.blue,
                          size: 35,),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        child: Text('Privacy Policy',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),


                  ///logout
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.logout,
                          color: Colors.red,
                          size: 35,),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        child: Text('Logout',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),

                  Divider(height: 24 ,thickness: 2,
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    ),

    MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,size: 30,) , label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.black,size: 30,) , label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,size: 30,) , label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,size: 30,) , label: 'Person'),

        ],
      ),
      body: pages[selectedIndex],
    );
  }
}