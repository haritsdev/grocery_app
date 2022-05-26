import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';

class ButttonAuth extends StatelessWidget {
  final Color color;
  final String caption;
  final Function() onPressed;
  final Icon? icon;

  const ButttonAuth(
      {Key? key,
      required this.caption,
      required this.onPressed,
      this.icon,
      this.color = AppColors.primaryColor})
      : super(key: key);

  // Button({required this.caption, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        margin: const EdgeInsets.only(bottom: 10, left: 8),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.transparent,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
            child: this.icon == null
                ? Text(caption,  textAlign: TextAlign.center, style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        )
                : Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        this.icon!,
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          caption,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )));
  }
}
