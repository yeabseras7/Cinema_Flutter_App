import 'package:cinema/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 80),
            Text(
              'Register',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Full name',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Type your full name',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Text(
              'Email',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Type your Email',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Text(
              'Address',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Type your Address',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Text(
              'Phone number',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Type your phone number',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              children: [
                Expanded(
                  child: GFButton(
                    color: Constants.primaryColor,
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 27),
                    ),
                    shape: GFButtonShape.pills,
                    blockButton: true,
                    type: GFButtonType.outline2x,
                    fullWidthButton: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
