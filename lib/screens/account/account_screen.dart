import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/helpers/column_with_separator.dart';
import 'package:grocery_app/helpers/size_config.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:grocery_app/widgets/app_text.dart';

import 'account_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.safeBlockVertical * 2,
              ),
              ListTile(
                leading:
                    SizedBox(width: 65, height: 65, child: getImageHeader()),
                title: const AppText(
                  text: "Teguh Muhammad Harits",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: const AppText(
                  text: "github.com/haritsdev3",
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              Column(
                children: getChildrenWithSeperator(
                  widgets: accountItems.map((e) {
                    return getAccountItemWidget(e);
                  }).toList(),
                  seperator: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              logoutButton(),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget logoutButton() {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockVertical * 2.7),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Color(0xffF2F3F2),
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.safeBlockVertical * 2.4,
                    horizontal: SizeConfig.safeBlockVertical * 2.5),
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    "assets/icons/account_icons/logout_icon.svg",
                  ),
                ),
                const Text(
                  "Log Out",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
                Container()
              ],
            )));
  }

  Widget getImageHeader() {
    String imagePath = "assets/images/account_image.jpg";
    return CircleAvatar(
      radius: 5.0,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
    );
  }

  Widget getAccountItemWidget(AccountItem accountItem) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          SizedBox(
            width: SizeConfig.safeBlockVertical * 3,
            height: SizeConfig.safeBlockVertical * 3,
            child: SvgPicture.asset(
              accountItem.iconPath,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            accountItem.label,
            style: TextStyle(
                fontSize: SizeConfig.safeBlockVertical * 2.2,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
