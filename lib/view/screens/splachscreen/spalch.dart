import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify_app_ui/utlis/routes/routes.dart';

class SpalchScreen extends StatefulWidget {
  const SpalchScreen({super.key});

  @override
  State<SpalchScreen> createState() => _SpalchScreenState();
}

class _SpalchScreenState extends State<SpalchScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 6),
      () {
        Navigator.pushReplacementNamed(context, Routes.homePage);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              "https://cdn.dribbble.com/users/8397981/screenshots/15955512/media/63c5be8eed650789c9fe53e94dbf9a05.gif"),
        ],
      ),
    );
  }
}
