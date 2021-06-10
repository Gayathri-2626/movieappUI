import 'package:flutter/material.dart';

class BottomNavigationBar extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainerBottomNav(Icons.home_outlined),
              buildContainerBottomNav(Icons.shopping_bag_outlined),
              buildContainerBottomNav(Icons.videocam, isSelected: true),
              buildContainerBottomNav(Icons.messenger_outline),
              buildContainerBottomNav(Icons.person_outline_outlined),
            ],
          ),
        ),
      ),

    );
  }

  buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.pink : Colors.black12,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
        ]
            : [],
      ),
      height: 40,
      width: 40,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.grey,),
    );
  }
}
