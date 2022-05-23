import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/app_text.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: AppText(
          text: 'No Favorite items',
          fontWeight: FontWeight.w600,
          color: Color(0xFF7C7C7C),
        ),
      ),
    );
  }
}
