import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';
import 'package:grocery_app/screens/auth/register.dart';
import 'package:grocery_app/styles/colors.dart';

import '../login_screen.dart';

class HeaderAuth extends StatelessWidget {
  final isLogin;
  const HeaderAuth({Key? key, required this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(
          vertical: screenWidth(context) < 780 ? 10 : 17,
          horizontal: screenWidth(context) < 780
              ? screenWidth(context) * 0.2
              : screenWidth(context) * 0.035),
      child: Card(
        elevation: 11,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                            (Route<dynamic> route) => false);
                      },
                      child: Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: isLogin
                                ? AppColors.primaryColor
                                : Colors.white),
                        child: Center(
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: isLogin ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => Register()),
                            (route) => false);
                      },
                      child: Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: isLogin
                                ? Colors.white
                                : AppColors.primaryColor),
                        child: Center(
                          child: Text(
                            'Register',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: isLogin ? Colors.black : Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
