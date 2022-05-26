import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';
import 'package:grocery_app/screens/dashboard/web/dashboard_web.dart';
import 'package:grocery_app/screens/dashboard/web/widgets/Profile/custom_profile.dart';
import 'package:grocery_app/screens/home_page.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:grocery_app/styles/theme.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                  Color.fromRGBO(9, 56, 35, 1),
                  Color.fromRGBO(21, 121, 55, 1),
                  Color.fromRGBO(35, 171, 105, 1),
                  AppColors.primaryColor
                ],
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topRight)),
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border:
                                    Border.all(color: Colors.green, width: 6),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          Colors.amberAccent.withOpacity(0.6),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3))
                                ]),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          )),
                      CustomProfile(onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DashboardWeb()),
                            (route) => false);
                      })
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: gilroyFontFamily),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: screenHeight(context) * 0.4,
                   
                    child: LayoutBuilder(builder: (context, constraints) {
                      double innerHeight = constraints.maxHeight;
                      double innerWidth = constraints.maxWidth;
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: innerHeight * 0.65,
                              width: innerWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child:Column(
                                children:[
                                  SizedBox(height:70),
                                  Text('Teguh Muhammad Harits',
                                  style:TextStyle(
                                  fontSize:30,
                                  color:AppColors.primaryColor))
                                ]
                              )
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Container(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  innerWidth * 300,
                                ),
                                child: Image.asset(
                                  'assets/images/account_image.jpg',
                                  width: innerWidth * 0.3,
                                  fit: BoxFit.fitWidth,
                                ),
                              )),
                            ),
                          )
                        ],
                      );
                    }),
                  )
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
