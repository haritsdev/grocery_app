import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';
import 'package:grocery_app/screens/auth/login_screen.dart';
import 'package:grocery_app/screens/auth/widget/button_auth.dart';
import 'package:grocery_app/screens/cart/cart_screen.dart';
import 'package:grocery_app/screens/dashboard/web/pages/profile.dart';
import 'package:grocery_app/screens/dashboard/web/widgets/Drawer/drawer_item.dart';
import 'package:grocery_app/styles/colors.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Material(
          color: AppColors.primaryColor,
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.0, 30, 24, 0),
            child: Column(
              children: [
                headerWidget(),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: screenHeight(context) * 0.225,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DrawerItem(
                            name: 'People',
                            icon: Icons.people,
                            onPressed: () => onItemPressed(context, index: 0)),
                        DrawerItem(
                            name: 'Keranjang Saya',
                            icon: Icons.account_box_rounded,
                            onPressed: () => onItemPressed(context, index: 1)),
                        DrawerItem(
                            name: 'Chats',
                            icon: Icons.message_outlined,
                            onPressed: () => onItemPressed(context, index: 2)),
                        DrawerItem(
                            name: 'Favorites',
                            icon: Icons.favorite_outline,
                            onPressed: () => onItemPressed(context, index: 3)),
                      ],
                    ),
                  ),
                ),
                Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    height: 10,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Settings',
                      icon: Icons.settings,
                      onPressed: () => onItemPressed(context, index: 5)),
                ]),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 250,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text('Expadnded',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        child: ButttonAuth(
                            caption: 'Logout',
                            color: Colors.red,
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                  (Route<dynamic> route) => false);
                            }),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onItemPressed(
    BuildContext context, {
    required int index,
  }) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyProfile()));
        break;

      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CartScreen()));
        break;
      case 5:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
        break;
    }
  }

  Widget headerWidget() {
    const imgPath = 'assets/images/account_image.jpg';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(imgPath),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Teguh m harits',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Teguh@gmail.com',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
