import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/constant.dart';
import 'package:grocery_app/screens/auth/widget/button_auth.dart';
import 'package:grocery_app/screens/auth/widget/edit_box.dart';
import 'package:grocery_app/screens/auth/widget/header_auth.dart';
import 'package:grocery_app/screens/auth/widget/leftside_auth.dart';
import 'package:grocery_app/screens/dashboard/dashboard_screen.dart';
import 'package:grocery_app/screens/dashboard/web/dashboard_web.dart';
import 'package:grocery_app/styles/colors.dart';
import '../../helpers/validation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: screenWidth(context) < 780
              ? const BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ))
              : null,
          child: Row(
            children: [
              screenWidth(context) < 780
                  ? Container()
                  : Expanded(child: LeftSideAuthWidget()),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HeaderAuth(
                    isLogin: true,
                  ),
                  Form(
                    key: _formKey,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: screenWidth(context) < 780
                              ? screenWidth(context) * 0.125
                              : screenWidth(context) * 0.035),
                      child: Card(
                        elevation: 11,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          height: 550,
                          padding: EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Container(
                                height: 35,
                                child: Row(
                                  children: [
                                    Tooltip(
                                      message: 'English',
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const Image(
                                            image: AssetImage(
                                                'assets/images/English.png'),
                                          )),
                                    ),
                                    Tooltip(
                                      message: 'Bahasa Indonesia',
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/indonesia.png'),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              const CircleAvatar(
                                backgroundColor: AppColors.primaryColor,
                                radius: 65,
                                backgroundImage:
                                    AssetImage('assets/images/background.png'),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              CustomFormField(
                                  required: true,
                                  validator: (val) {
                                    if (!val!.isValidName) {
                                      return 'Masukan nama anda';
                                    }
                                  },
                                  hint: 'Username'),
                              const SizedBox(
                                height: 15,
                              ),
                              CustomFormField(
                                required: true,
                                hint: 'Password',
                                password: true,
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              screenWidth(context) < 780
                                  ? Column(
                                      children: footerButton(),
                                    )
                                  : Row(
                                      children: footerButton(),
                                    )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> footerButton() => [
        ButttonAuth(
          caption: 'Login',
          icon: Icon(Icons.lock),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => DashboardWeb()),
                  (route) => false);
            }
          },
        ),
        const SizedBox(
          width: 15,
        ),
        TextButton(
            style: TextButton.styleFrom(
              primary: AppColors.primaryColor,
            ),
            onPressed: () {},
            child: const Center(
                child: Text(
              'Lupa Password ?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )))
      ];
}
