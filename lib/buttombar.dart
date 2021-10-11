// import 'package:assignment12/List1.dart';
// import 'package:assignment12/List2.dart';
import 'package:flutter/material.dart';

class BottombarScreen extends StatefulWidget {
  const BottombarScreen({Key? key}) : super(key: key);

  @override
  _BottombarScreenState createState() => _BottombarScreenState();
}

class _BottombarScreenState extends State<BottombarScreen> {
  int _currentIndex = 0;
  List<Widget> tabList = [
    FirstListViewPage(),
    SecondListViewPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:  Color(0xff533549),
        title: Text('List Tile Screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          selectedFontSize: 15.0,
          iconSize: 25.0,
          showUnselectedLabels: false,unselectedItemColor: Color(0xffbab3b3),
          selectedItemColor: Color(0xffF6B042),
          backgroundColor: Color(0xff533549),
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Students Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood_outlined), label: 'Food Menu'),
          ]),
      body: tabList[_currentIndex],
    );
  }
}