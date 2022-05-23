import 'package:flutter/material.dart';
import 'package:grocery_app/helpers/size_config.dart';
import 'package:grocery_app/models/grocery_item.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:grocery_app/widgets/app_text.dart';

import 'item_counter_widget.dart';

class ChartItemWidget extends StatefulWidget {
  const ChartItemWidget({Key? key, this.item}) : super(key: key);
  final GroceryItem? item;

  @override
  State<ChartItemWidget> createState() => _ChartItemWidgetState();
}

class _ChartItemWidgetState extends State<ChartItemWidget> {
  final double height = 110;

  final Color borderColor = Color(0xffE2EE2);

  final double borderRadius = 18;

  int amount = 1;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            imageWidget(),
            const SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: widget.item!.name,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                AppText(
                    text: widget.item!.description,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGrey),
                SizedBox(
                  height: 12,
                ),
                Spacer(),
                ItemCounterWidget(
                  onAmountChanged: (newAmount) {
                    setState(() {
                      amount = newAmount;
                    });
                  },
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.close,
                  color: AppColors.darkGrey,
                  size: SizeConfig.safeBlockVertical * 3,
                ),
                Spacer(
                  flex: 5,
                ),
                Container(
                  width: 70,
                  child: AppText(
                    text: "\$${getPrice().toStringAsFixed(2)}",
                    fontSize: SizeConfig.safeBlockVertical * 2.2,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.right,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      width: SizeConfig.safeBlockHorizontal * 20,
      child: Image.asset(widget.item!.imagePath),
    );
  }

  double getPrice() {
    return widget.item!.price * amount;
  }
}
