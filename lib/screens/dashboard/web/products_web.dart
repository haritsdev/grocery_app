import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';
import 'package:grocery_app/styles/colors.dart';

class ProductWeb extends StatefulWidget {
  const ProductWeb({Key? key}) : super(key: key);

  @override
  State<ProductWeb> createState() => _ProductWebState();
}

class _ProductWebState extends State<ProductWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 50),
        child: Container(
            child: GridView.count(
          crossAxisCount: screenWidth(context) < 780 ? 3 : 5,
          childAspectRatio: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 20.0,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amberAccent[400],
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    child: Image.asset(
                      'assets/images/categories_images/fruit.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primaryColor,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    child: Image.asset(
                      'assets/images/categories_images/meat.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange[200],
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    child: Image.asset(
                      'assets/images/categories_images/bakery.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[200],
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    child: Image.asset(
                      'assets/images/categories_images/bakery.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[400],
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    child: Image.asset(
                      'assets/images/categories_images/bakery.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
