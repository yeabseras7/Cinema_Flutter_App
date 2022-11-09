import 'package:cinema/screens/home/body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constant.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // body: Bod(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
    backgroundColor: Color.fromARGB(255, 43, 43, 43),
    elevation: 0,
    // leading: IconButton(
    //   icon: SvgPicture.asset("assets/icons/back.svg"), 
    //   onPressed: () {

    //   },
    //   ),
      // actions: <Widget>[
      //   // IconButton(
      //   //   onPressed: (){}, 
      //   //   icon: SvgPicture.asset(
      //   //     "assets/icons/search.svg",
      //   //     color: KTextColor,
      //   //   )
      //   // ),

      //   // IconButton(
      //   //   onPressed: (){}, 
      //   //   icon: SvgPicture.asset(
      //   //     "assets/icons/cart.svg",
      //   //     color: KTextColor,
      //   //   ),
      //   // ),
      //   SizedBox(width: kDefaultPaddin / 2,),

      // ],
    );


  }
}