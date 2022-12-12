import 'package:flutter/material.dart';
import 'package:web_first_project/widget/customText.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text:"Client Page"),
    );
  }
}