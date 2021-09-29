import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netflix/widgets/profile.dart';

class Profile_Screen extends StatefulWidget {
  static const String rout ="nikmok_screen";
  String UserID;
  Profile_Screen({Key? key,this.UserID = ""}) : super(key: key);
  @override
  _Profile_ScreenState createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  List<String> profiles =  ["Hcham","Dido","Asma","Kadiro","Sido"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Center(child:SvgPicture.asset("images/Netflix_2015_logo.svg", width: 100,)),
        actions: [
          IconButton(onPressed:(){}, icon: Icon(Icons.mode_edit)),
        ],
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Qui est-ce ?",style: TextStyle(color: Colors.white,fontSize: 28),),
            SizedBox(height: 20,)
            ,
            Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Profile(name: "Dido",image: "",),Profile(name: "Hicham",image: "",)],
    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Profile(name: "Asma",image: "",),Profile(name: "Kadiro",image: "",)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Profile(name: "Sido",image: "",),],
            )
          ],
        )

    );
  }
}
