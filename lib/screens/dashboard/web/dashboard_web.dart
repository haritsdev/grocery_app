import 'package:flutter/material.dart';
import 'package:grocery_app/screens/dashboard/web/pages/produk_terbaru.dart';
import 'package:grocery_app/screens/dashboard/web/products_web.dart';
import 'package:grocery_app/screens/dashboard/web/top_bar.dart';
import 'package:grocery_app/screens/dashboard/web/slider_images.dart';
import 'package:grocery_app/screens/dashboard/web/widgets/Drawer/drawer_widget.dart';
import 'package:grocery_app/screens/dashboard/web/widgets/pembatas_web.dart';

class DashboardWeb extends StatefulWidget {
  const DashboardWeb({Key? key}) : super(key: key);

  @override
  State<DashboardWeb> createState() => _DashboardWebState();
}

class _DashboardWebState extends State<DashboardWeb> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const NavigationDrawer(),
        body: Builder(builder: (context) {
          return Container(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SliderImages(),
                      PembatasWidget(
                        isCenter: false,
                        text: 'Kategori',
                      ),
                      ProductWeb(),
                      PembatasWidget(
                        isCenter: true,
                        text: 'Rekomendasi Makanan',
                      ),
                      ProdukTerbaru(),
                      PembatasWidget(
                        isCenter: true,
                        text: 'Rekomendasi Minuman',
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 70,
                    child: Material(
                        elevation: 1,
                        child: TopBar(
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        )))
              ],
            ),
          );
        }),
      ),
    );
  }
}
