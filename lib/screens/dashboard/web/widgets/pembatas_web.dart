import 'package:flutter/material.dart';
import 'package:grocery_app/screens/filter_screen.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:grocery_app/styles/theme.dart';

class PembatasWidget extends StatelessWidget {
  final String text;
  final bool isCenter;
  const PembatasWidget({Key? key, required this.text, required this.isCenter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: isCenter ? 60.0 : 30,
          bottom: isCenter ? 50.0 : 20,
          left: isCenter ? 0 : 20,
          right: isCenter ? 0 : 20),
      child: Row(
        mainAxisAlignment:
            isCenter ? MainAxisAlignment.center : MainAxisAlignment.spaceEvenly,
        children: [
          isCenter
              ? Container(
                  height: 2.0,
                  width: 15.0,
                  color: Colors.black,
                )
              : SizedBox(),
          isCenter
              ? Container(
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: gilroyFontFamily,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : Expanded(
                  child: Container(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 30,
                          fontFamily: gilroyFontFamily,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          isCenter
              ? Container(
                  height: 2.0,
                  width: 15.0,
                  color: Colors.black,
                )
              : SizedBox(),
          isCenter
              ? SizedBox()
              : MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FilterScreen()));
                    },
                    child: const Icon(
                      IconData(0xf068, fontFamily: 'MaterialIcons'),
                      size: 40,
                      color: AppColors.primaryColor,
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
