import 'package:flutter/material.dart';
import 'package:web_first_project/widget/customText.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text:"OverView Page"),
    );
  }
}