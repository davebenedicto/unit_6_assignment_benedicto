import 'package:unit_6_assignment_benedicto/components/tab_widget_1.dart';
import 'package:unit_6_assignment_benedicto/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
        backgroundColor: Colors.orange,
      ),
      body: const Material(
          child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.contacts),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [TabWidget1(), TabWidget2()],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
