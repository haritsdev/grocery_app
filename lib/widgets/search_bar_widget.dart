import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/helpers/size_config.dart';

class SearchBarWidget extends StatelessWidget {
  final String searchIcon = "assets/icons/search_icon.svg";

  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            searchIcon,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Search Store",
            style: TextStyle(
                fontSize: SizeConfig.safeBlockVertical * 1.8,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7C7C7C)),
          )
        ],
      ),
    );
    ;
  }
}
