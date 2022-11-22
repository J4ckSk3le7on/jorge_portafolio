import 'package:flutter/material.dart';
import 'package:jorge_portafolio/app/pages/mobile/services_testimonials_page/services_testimonials_page_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ServicesPageMobile(),
      tablet: (BuildContext context) => const ServicesPageMobile(),
      desktop: (BuildContext context) => Container(color:Colors.red),
      watch: (BuildContext context) => Container(color:Colors.purple),
    );
  }

}