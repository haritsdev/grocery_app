import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';

class ProductCard extends StatelessWidget {
  final String namaProduk;
  final int hargaProduk;
  final bool isWishList;
  final String imagePath;
  const ProductCard(
      {Key? key,
      required this.namaProduk,
      required this.hargaProduk,
      required this.imagePath,
      this.isWishList = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    child: Text(
                      namaProduk,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: screenWidth(context) < 700 ? 3 : 6),
                  width: screenWidth(context) < 700 ? 25 : 50,
                  height: screenWidth(context) < 700 ? 25 : 50,
                  padding: screenWidth(context) < 700
                      ? EdgeInsets.all(5)
                      : EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: isWishList
                      ? Center(
                          child: Icon(
                            Icons.favorite_rounded,
                            color: Colors.pink,
                            size: screenWidth(context) < 700 ? 15 : 30,
                          ),
                        )
                      : Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.black,
                          size: screenWidth(context) < 700 ? 15 : 30,
                        ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 05, bottom: 08.0),
              child: Text(
                'Rp. $hargaProduk',
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
