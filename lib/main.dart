import 'package:flutter/material.dart';
import 'package:netflix/screen/profile_screen.dart';
import 'package:netflix/screen/signin_screen.dart';
import 'package:netflix/screen/home_screen.dart';
import 'package:netflix/widgets/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NETFLIX',
      theme: ThemeData(
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix",
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenHome.rout,
      routes: {
        ScreenHome.rout : (context) => ScreenHome(),
        SignInScreen.rout : (context) => SignInScreen(),
      },
    );
  }

}
