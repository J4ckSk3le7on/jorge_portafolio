import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:jorge_portafolio/app/pages/mobile/home_page/home_page_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const HomePageMobile(),
      tablet: (BuildContext context) => const HomePageMobile(),
      desktop: (BuildContext context) => Container(color:Colors.red),
      watch: (BuildContext context) => Container(color:Colors.purple),
    );
  }

}