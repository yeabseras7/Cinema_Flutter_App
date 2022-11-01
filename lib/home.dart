import 'package:cinema/extensions/context_extensions.dart';
import 'package:cinema/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20, 125, 20, 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'A Cinema',
              style: context.headline3.copyWith(color: Constants.primaryColor),
            ),

            // const SizedBox(height: 10),

            Text(
              'Welcome to\nthe new\nA cinemas',
              style: context.headline3.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),

            const SizedBox(height: 25),

            Text(
              'New level of features\nwith the new app',
              style: context.headline5.copyWith(
                color: Constants.textGreyColor,
                fontWeight: FontWeight.w400,
                fontSize: 21,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: GFButton(
                          color: Constants.primaryColor,
                          onPressed: (){},
                          text: "Login",
                          shape: GFButtonShape.pills,
                          blockButton: true,
                          
                      ),
                      
                  ),
                
              ],
            ),

            Row(
              children: [
                Expanded(child: GFButton(
                          color: Constants.primaryColor,
                          onPressed: (){},
                          text: "Register",
                          shape: GFButtonShape.pills,
                          blockButton: true,
                          type: GFButtonType.outline2x,
                          fullWidthButton: true,
                      ),
                      
                )

              ],
            )
          ],
         
        ),
      ),
      );
  }
}