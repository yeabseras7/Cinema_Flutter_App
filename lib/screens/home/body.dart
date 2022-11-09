import 'package:cinema/screens/home/item_card.dart';
import "package:flutter/material.dart";
import 'package:cinema/models/movies.dart';

import '../../utils/constant.dart';
import '../detail/details_screen.dart';
class Bod extends StatelessWidget {
  final Movie movie;
  const Bod({Key? key,  required this.movie, }) : super(key: key);
 @override
 Widget build(BuildContext context) {
  
   return MaterialApp(
    debugShowCheckedModeBanner: false,
       home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("Movies"), backgroundColor: Color.fromARGB(255, 0, 0, 0),),
           body: Container(
                child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Movies",
            style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        // Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: movies.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: kDefaultPaddin * 10,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.7,
              ), 
              itemBuilder: (context, index) => ItemCard(
                movie: movies[index], 
                press: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: movies[index],
                    ),
                  )),
              ),
            ),
          ),
        ),
      ],
    )
     )));
 }
}


