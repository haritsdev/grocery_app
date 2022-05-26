import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';
import 'package:grocery_app/screens/cart/cart_screen.dart';
import 'package:grocery_app/screens/dashboard/web/widgets/Profile/custom_profile.dart';
import 'package:grocery_app/styles/colors.dart';

class TopBar extends StatelessWidget {
  final Function() onPressed;
  const TopBar({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: screenWidth(context) < 700
          ? EdgeInsets.symmetric(horizontal: 5)
          : EdgeInsets.symmetric(horizontal: 30),
      // ignore: avoid_unnecessary_containers
      child: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
              child: Image.asset(
            'assets/images/logo1.png',
          )),
          // ignore: sized_box_for_whitespace
          screenWidth(context) > 1220
              ? Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 50,
                  width: screenWidth(context) < 1160
                      ? 480
                      : screenWidth(context) < 980
                          ? 350
                          : 400,
                  child: TextField(
                    cursorColor: Colors.green[300],
                    decoration: const InputDecoration(
                        hintText: 'Cari yang anda inginkan disini...',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: AppColors.primaryColor,
                            fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        filled: true,
                        fillColor: Colors.white24,
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 02.0),
                          child: Icon(
                            Icons.search,
                            color: AppColors.primaryColor,
                            size: 22,
                          ),
                        )),
                    style: TextStyle(fontSize: 16.0, color: Colors.green),
                  ),
                )
              : SizedBox(),

          Container(
            width: screenWidth(context) > 980 ? 450 : 0,
            child: screenWidth(context) > 980
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CartScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(18)),
                            child: Padding(
                              padding: screenWidth(context) > 980
                                  ? EdgeInsets.only(left: 10.0, right: 20.0)
                                  : EdgeInsets.only(left: 5.0, right: 10.0),
                              child: const Text(
                                'Keranjang',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor),
                              ),
                            )),
                      ),
                      Container(
                        child: TextButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(18)),
                            child: Padding(
                              padding: screenWidth(context) > 980
                                  ? EdgeInsets.only(left: 10.0, right: 20.0)
                                  : EdgeInsets.only(left: 5.0, right: 10.0),
                              child: Text(
                                'Whishlist',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor),
                              ),
                            )),
                      ),
                      Container(
                        child: TextButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(18)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: screenWidth(context) > 980
                                      ? EdgeInsets.only(left: 10.0, right: 20.0)
                                      : EdgeInsets.only(left: 5.0, right: 10.0),
                                  child: const Text(
                                    'Tentang Saya',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  )
                : SizedBox(),
          ),

          CustomProfile(onPressed: onPressed)
        ],
      )),
    );
  }
}
