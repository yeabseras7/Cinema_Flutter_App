import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(
          icon: Icons.remove_outlined,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"), 
            style: Theme.of(context).textTheme.headline6,),
        ),
        buildOutlinedButton(icon: Icons.add_outlined, press: () {
          setState(() {
            numOfItems++;
          });
        })
      ],
    );
  }

  SizedBox buildOutlinedButton({required IconData icon, required VoidCallback press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          onPressed: press,
          child: Icon(icon),
        ),
      );
  }
}