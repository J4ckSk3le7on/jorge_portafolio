import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Container(color:Colors.blue),
      tablet: (BuildContext context) => Container(color:Colors.yellow),
      desktop: (BuildContext context) => Container(color:Colors.red),
      watch: (BuildContext context) => Container(color:Colors.purple),
    );
  }
}