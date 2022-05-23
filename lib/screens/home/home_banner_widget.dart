import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:grocery_app/widgets/app_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage("assets/images/banner_background.png"),
              fit: BoxFit.cover)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Image.asset("assets/images/banner_image.png"),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "Sayur segar",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "Diskon Sampai 40 %",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
