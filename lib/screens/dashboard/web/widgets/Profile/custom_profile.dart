import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';

class CustomProfile extends StatelessWidget {
  final Function() onPressed;
  const CustomProfile({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: InkWell(
              onTap: onPressed,
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/account_image.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.black,
                    border: Border.all(width: 1, color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(45)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
