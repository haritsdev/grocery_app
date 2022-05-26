import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';

class LeftSideAuthWidget extends StatelessWidget {
  const LeftSideAuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.green.shade200,
            Colors.green.shade400,
            Colors.green.shade700,
            Colors.green.shade900,
          ]),
          image: const DecorationImage(
              image: AssetImage('assets/images/food_login.png'),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          const Text(
            'Welcome',
            style: TextStyle(
                fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          screenWidth(context) > 780
              ? SizedBox(
                  height: screenHeight(context) * 0.5 - 150,
                )
              : SizedBox(
                  height: screenHeight(context) * 0.4 - 10,
                ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Center(child: Image.asset('assets/images/logo.png')),
            ),
          ),
        ],
      ),
    );
  }
}
