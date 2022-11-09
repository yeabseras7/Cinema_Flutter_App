import 'package:cinema/models/movies.dart';
import 'package:flutter/material.dart';
import 'package:cinema/models/movies.dart';
import '../../utils/constant.dart';


class ItemCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback press;
  // required this.movie, required this.press,
  const ItemCard({
    required this.movie,
    required this.press,
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // height: 170,
              // width: 150,
              decoration: BoxDecoration(
                color: movie.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${movie.id}",
                child: Image.asset(movie.image)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(movie.title,
              style: TextStyle(color: Constants.primaryColor, fontSize: 20),
            ),
          ),
          Text("\$${movie.price}", 
          style: TextStyle(color: Constants.primaryColor, fontWeight: FontWeight.bold, fontSize: 15)),
        ],
      ),
    );
  }
}

