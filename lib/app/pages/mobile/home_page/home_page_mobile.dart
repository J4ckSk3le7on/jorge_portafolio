import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jorge_portafolio/app/pages/about_page.dart';
import 'package:jorge_portafolio/app/pages/interests_page.dart';
import 'package:jorge_portafolio/app/pages/projects_page.dart';
import 'package:jorge_portafolio/app/pages/services_page.dart';
import 'package:jorge_portafolio/app/pages/skills_page.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  late int pageIndex;

  @override
  void initState() {
    pageIndex = 2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: const [
          SkillsPage(),
          InterestsPage(),
          AboutPage(),
          ProjectsPage(),
          ServicesPage()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        ),
        child: const Icon(FontAwesomeIcons.addressCard),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        enableFeedback: true,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: (int value) {
          setState(() => pageIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.code),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: 'Interests'
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'About'
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.barsProgress),
            label: 'Projects'
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.laptop),
            label: 'Services'
          ),
        ]
      ),
    );
  }

}