import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';

class AppButton extends StatelessWidget {
  final String? label;
  final double roundness;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final Widget? trailingWidgget;
  final Function? onPressed;

  const AppButton(
      {Key? key,
      this.label,
      this.roundness = 10,
      this.fontWeight = FontWeight.bold,
      this.padding = const EdgeInsets.symmetric(vertical: 15),
      this.trailingWidgget,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {
          if (onPressed != null) onPressed!();
        },
        style: ElevatedButton.styleFrom(
            primary: AppColors.primaryColor,
            // textStyle: const TextStyle(
            //     fontWeight: FontWeight.bold, color: Colors.white),
            elevation: 0.0,
            padding: padding,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(roundness))),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Center(
              child: Text(
                label!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, fontWeight: fontWeight),
              ),
            ),
            if (trailingWidgget != null)
              Positioned(
                top: 0,
                right: 25,
                child: trailingWidgget!,
              )
          ],
        ),
      ),
    );
  }
}
