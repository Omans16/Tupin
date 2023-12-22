import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'homepage.dart';
import 'profile.dart';

class Mytemplate extends StatefulWidget {
  const Mytemplate({Key? key}) : super(key: key);

  @override
  State<Mytemplate> createState() => _MytemplateState();
}

class _MytemplateState extends State<Mytemplate> {
  int selectedPage = 0;
  final _pageOption = [
    const Myhomepage(),
    const Myprofile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOption [selectedPage],
        bottomNavigationBar: ConvexAppBar(
          color: Colors.white,
          activeColor: Colors.white,
          backgroundColor: Colors.green.shade600,
          elevation: 0,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            //TabItem(icon: Icons.map, title: 'Discovery'),
            //TabItem(icon: Icons.add, title: 'Add'),
            //TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 0,
          onTap: (int i) {
            setState(() {
            selectedPage = i;
          });
        },
      )
    );
  }
}
