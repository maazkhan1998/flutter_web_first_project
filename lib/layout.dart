import 'package:flutter/material.dart';
import 'package:web_first_project/widget/large_screen.dart';

class SiteLayOut extends StatelessWidget {
  const SiteLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: const LargeScreen(),
    );
  }
}
