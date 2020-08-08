import 'package:flutter/material.dart';
import 'Screens/Home/Widgets/home.dart';
import 'Screens/Search/Widgets/searchPage.dart';
import 'Screens/Profile/widgets/ProfilePage.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int indexTaped = 0;
  final List<Widget> WidgetsChilndre = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTaped = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetsChilndre[indexTaped],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            currentIndex: indexTaped,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(""),
              )
            ],
          )),
    );
  }
}
