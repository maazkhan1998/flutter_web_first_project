import 'package:flutter/material.dart';
import 'package:web_first_project/widget/customText.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: "Authentication Page"),
    );
  }
}
