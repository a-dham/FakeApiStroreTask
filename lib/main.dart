import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mystore/features/home_page/presenation/homepage_view.dart';

void main(List<String> args) {
  runApp(Market());
}

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
    );
  }
}
