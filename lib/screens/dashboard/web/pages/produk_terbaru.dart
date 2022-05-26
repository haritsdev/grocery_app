import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';
import 'package:grocery_app/screens/dashboard/web/widgets/product_card.dart';

class ProdukTerbaru extends StatefulWidget {
  const ProdukTerbaru({Key? key}) : super(key: key);

  @override
  State<ProdukTerbaru> createState() => _ProdukTerbaruState();
}

class _ProdukTerbaruState extends State<ProdukTerbaru> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: screenWidth(context) < 700 ? 5 : 30,
          vertical: screenWidth(context) < 700 ? 10 : 20),
      child: Container(
          child: GridView.count(
        crossAxisCount: screenWidth(context) > 980
            ? 5
            : screenWidth(context) > 800
                ? 3
                : 2,
        childAspectRatio: 0.8,
        mainAxisSpacing: screenWidth(context) < 700 ? 10 : 20,
        crossAxisSpacing: screenWidth(context) < 700 ? 20 : 40,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: const [
          ProductCard(
              namaProduk: 'Holland Bakery Roti Manis',
              imagePath: 'assets/images/categories_images/bakery.png',
              hargaProduk: 10500,
              isWishList: true),
          ProductCard(
            namaProduk: 'Ayam Geprek Level 10',
            imagePath: 'assets/images/produk/ayam_geprek.png',
            hargaProduk: 19000,
          ),
          ProductCard(
            namaProduk: 'Ayam Geprek Saos BBQ',
            imagePath: 'assets/images/produk/ayam_geprek_bbq.jpg',
            hargaProduk: 25000,
          ),
          ProductCard(
            namaProduk: 'Nasi Bebek bumbu hitam',
            imagePath: 'assets/images/produk/nasi_bebek.png',
            hargaProduk: 18000,
          ),
          ProductCard(
            namaProduk: 'Soto Ayam Surabaya',
            imagePath: 'assets/images/categories_images/bakery.png',
            hargaProduk: 15000,
          ),
          ProductCard(
            namaProduk: 'Nasi Goreng gila',
            imagePath: 'assets/images/produk/nas_gor_gila.png',
            hargaProduk: 14000,
          ),
          ProductCard(
            namaProduk: 'Ayam Bakar Taliwang',
            imagePath: 'assets/images/produk/ayam_bakar_taliwang.png',
            hargaProduk: 18000,
          ),
          ProductCard(
            namaProduk: 'Cumi Goreng Tepung',
            imagePath: 'assets/images/produk/cumi_tepung.png',
            hargaProduk: 30000,
          ),
          ProductCard(
            namaProduk: 'Seafood Udang, Kerang Jagung',
            imagePath: 'assets/images/produk/lobster1.png',
            hargaProduk: 85000,
          ),
          ProductCard(
            namaProduk: 'Paket Seafood I , Kepiting ,Udang, Kerang Jagung',
            imagePath: 'assets/images/produk/kepiting.jpeg',
            hargaProduk: 85000,
          ),
        ],
      )),
    );
  }
}
