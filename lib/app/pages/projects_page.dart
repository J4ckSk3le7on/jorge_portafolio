import 'package:flutter/material.dart';
import 'package:jorge_portafolio/app/pages/mobile/projects_page/projects_page_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ProjectsPageMobile(),
      tablet: (BuildContext context) => const ProjectsPageMobile(),
      desktop: (BuildContext context) => Container(color:Colors.red),
      watch: (BuildContext context) => Container(color:Colors.purple),
    );
  }

}