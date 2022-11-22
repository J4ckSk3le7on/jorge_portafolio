import 'package:flutter/material.dart';
import 'package:jorge_portafolio/app/pages/mobile/skills_page/skills_page_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const SkillsPageMobile(),
      tablet: (BuildContext context) => Container(color:Colors.yellow),
      desktop: (BuildContext context) => Container(color:Colors.red),
      watch: (BuildContext context) => Container(color:Colors.purple),
    );
  }

}