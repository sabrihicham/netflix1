import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        primarySwatch: Colors.red,
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Image(image: AssetImage("lib/images/netflixlogo.png"),),
        actions: [
          TextButton(onPressed:() {}, child: const Text("PRIVACY",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white))),
          TextButton(onPressed:() {}, child: const Text("SIGN IN",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white)))
        ],
      ),
      body: Wrap(
        direction: Axis.vertical,
        children: [
          CarouselSlider(
                items: const [
                  Image(image: AssetImage("lib/images/image1.jpg")),
                  Image(image: AssetImage("lib/images/image2.jpg"))
                ],
                options: CarouselOptions(
                  disableCenter: true,
                  autoPlay: true
                )),

        ],
      ),
    );
  }

}
