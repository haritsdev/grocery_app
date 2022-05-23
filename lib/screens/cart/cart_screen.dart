import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/column_with_separator.dart';
import 'package:grocery_app/models/grocery_item.dart';
import 'package:grocery_app/screens/cart/checkout_bottom_sheet.dart';
import 'package:grocery_app/widgets/app_button.dart';
import 'package:get/get.dart';
import 'package:grocery_app/helpers/size_config.dart';
import 'package:grocery_app/widgets/chart_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "My Cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: getChildrenWithSeperator(
                  addToLastChild: false,
                  widgets: demoItems.map((e) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      width: double.maxFinite,
                      child: ChartItemWidget(
                        item: e,
                      ),
                    );
                  }).toList(),
                  seperator: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              getCheckoutButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget getButtonPriceWidget() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: Color(0xff489E67),
      ),
      child: const Text(
        "Rp 20000",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }

  void showBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return CheckoutBottomSheet();
        });
  }

  Widget getCheckoutButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: AppButton(
        label: "Go To Check Out",
        fontWeight: FontWeight.w600,
        padding:
            EdgeInsets.symmetric(vertical: SizeConfig.safeBlockVertical * 2),
        trailingWidgget: getButtonPriceWidget(),
        onPressed: () {
          showBottomSheet(context);
        },
      ),
    );
  }
}
