import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/helpers/size_config.dart';
import 'package:grocery_app/screens/dashboard/dashboard_screen.dart';
import 'package:grocery_app/screens/home_page.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:grocery_app/widgets/app_button.dart';
import 'package:grocery_app/widgets/app_text.dart';

class WelcomeScreen extends StatelessWidget {
  final String imagePath = "assets/images/welcome_image.png";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Spacer(),
              icon(),
              const SizedBox(
                height: 20,
              ),
              welcomeTextWidget(),
              const SizedBox(
                height: 10,
              ),
              sloganText(),
              SizedBox(height: 40),
              getButton(context),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget icon() {
  String iconPath = "assets/icons/app_icon.svg";
  return SvgPicture.asset(iconPath, width: 48, height: 56);
}

Widget welcomeTextWidget() {
  return Column(
    children: const [
      AppText(
        text: "Welcome",
        fontSize: 48,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      AppText(
        text: "to our store",
        fontSize: 48,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ],
  );
}

Widget sloganText() {
  return AppText(
    text: "Get your grecories as fast as in hour",
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xffFCFCFC).withOpacity(0.7),
  );
}

Widget getButton(BuildContext context) {
  return AppButton(
    label: "Get Started",
    fontWeight: FontWeight.w600,
    padding: EdgeInsets.symmetric(vertical: 15),
    onPressed: () {
      onGetStartedClicked(context);
    },
  );
}

void onGetStartedClicked(BuildContext context) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (BuildContext context) {
      return DashboardScreen();
    },
  ));
}
