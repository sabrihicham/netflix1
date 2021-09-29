import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_media_outlined,),label: "Comming Soon"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_circle_down_outlined,),label: "Downloads",)
        ],
      ),
    );
  }
}
