import 'package:flutter/material.dart';

class CarouselCategory extends StatefulWidget {
  const CarouselCategory({Key? key}) : super(key: key);

  @override
  State<CarouselCategory> createState() => _CarouselCategoryState();
}

class _CarouselCategoryState extends State<CarouselCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Carousel Mobile category',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
