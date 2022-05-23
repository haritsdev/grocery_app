import 'package:flutter/material.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:grocery_app/widgets/app_button.dart';
import 'package:grocery_app/widgets/app_text.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
          title: const AppText(
              text: "Filters", fontSize: 20, fontWeight: FontWeight.bold)),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        decoration: BoxDecoration(color: Color(0xFFF2F3F2)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getLabel("Categories"),
            const SizedBox(
              height: 15,
            ),
            const OptionItem(text: "Telur"),
            const SizedBox(
              height: 15,
            ),
            const OptionItem(text: "Mie & Pasta"),
            const SizedBox(
              height: 15,
            ),
            const OptionItem(text: "Kripik"),
            const SizedBox(
              height: 15,
            ),
            const OptionItem(text: "Makanan Cepat Saji"),
            const SizedBox(
              height: 30,
            ),
            getLabel("Brand"),
            const SizedBox(
              height: 15,
            ),
            OptionItem(text: "Warung Sederhana"),
            const SizedBox(
              height: 15,
            ),
            OptionItem(text: "Geprek Bensu"),
            const SizedBox(
              height: 15,
            ),
            OptionItem(text: "Warunk upnormal"),
            const SizedBox(
              height: 15,
            ),
            OptionItem(text: "Kafe boedjangan"),
            const SizedBox(
              height: 15,
            ),
            OptionItem(text: "Mc Donalds"),
            Spacer(),
            AppButton(
              label: 'Apply Filter',
              fontWeight: FontWeight.w600,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget getLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}

class OptionItem extends StatefulWidget {
  final String text;
  const OptionItem({Key? key, required this.text}) : super(key: key);

  @override
  State<OptionItem> createState() => _OptionItemState();
}

class _OptionItemState extends State<OptionItem> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          getCheckBox(),
          const SizedBox(
            width: 15,
          ),
          getTextWidget()
        ],
      ),
    );
  }

  Widget getTextWidget() {
    return Text(
      widget.text,
      style: TextStyle(
          color: checked ? AppColors.primaryColor : Colors.black,
          fontSize: 16,
          fontWeight: checked ? FontWeight.w800 : FontWeight.w600),
    );
  }

  Widget getCheckBox() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: SizedBox(
        width: 25,
        height: 25,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  width: checked ? 0 : 1.5, color: Color(0xffB1B1B1)),
              borderRadius: BorderRadius.circular(8),
              color: checked ? AppColors.primaryColor : Colors.transparent),
          child: Theme(
            data: ThemeData(unselectedWidgetColor: Colors.transparent),
            child: Checkbox(
              value: checked,
              onChanged: (state) => setState(() => checked = !checked),
              activeColor: Colors.transparent,
              checkColor: Colors.white,
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
          ),
        ),
      ),
    );
  }
}
