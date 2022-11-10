import 'package:cinema/models/movies.dart';
import 'package:cinema/screens/home/body.dart';
import 'package:cinema/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  
  get movie => movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.manage_accounts,
                size: 35,
                color: Colors.red,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.logout,
                size: 35,
                color: Colors.red,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                '  Welcome',
                style: TextStyle(fontSize: 60, color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                '  Full Name',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                '  Email',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                '  Address',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                '  Contact',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Row(
              children: [
                Expanded(
                  child: GFButton(
                    color: Constants.primaryColor,
                    text: "View Booking",
                    size: 42,
                    shape: GFButtonShape.pills,
                    blockButton: true,
                    type: GFButtonType.outline2x,
                    fullWidthButton: true,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const Register()),
                      // );
                    },
                  ),
                )
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: <Widget>[
            //     Expanded(
            //       child: GFButton(
            //         color: Constants.primaryColor,
            //         onPressed: () {Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => const ),
            //           );
            //           },
            //         text: "Browse Movies",
            //         size: 42,
            //         shape: GFButtonShape.pills,
            //         blockButton: true,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
