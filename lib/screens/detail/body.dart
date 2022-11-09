// import 'package:cinema/screens/detail/add_to_cart.dart';
// import 'package:cinema/screens/detail/color_and_size.dart';
// import 'package:cinema/screens/detail/counter_with_fav_bin.dart';
// import 'package:cinema/screens/detail/description.dart';
// import 'package:cinema/screens/detail/product_title_with_image.dart';
import 'package:flutter/material.dart';

import '../../models/movies.dart';
// import 'package:cinema/models/movies.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// import '../../utils/constant.dart';

class Body extends StatelessWidget {
  final Movie product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                  // height

//                 Container(
//                   margin: EdgeInsets.only(top: size.height * 0.3),
//                   padding: EdgeInsets.only(
//                     top: size.height * 0.12,
//                     left: kDefaultPaddin,
//                     right: kDefaultPaddin,
//                   ),
//                   // height: 500,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(24),
//                       topRight: Radius.circular(24),
//                     ),
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       ColorAndSize(product: product),
//                       SizedBox(height: kDefaultPaddin / 2,),
//                       Description(product: product),
//                       SizedBox(height: kDefaultPaddin / 2,),
//                       CounterWithFavBtn(),
//                       SizedBox(height: kDefaultPaddin / 2,),
//                       AddToCart(product: product),
//                     ],
//                   ),
//                 ),
//                 ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
