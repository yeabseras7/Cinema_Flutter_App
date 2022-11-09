import 'package:flutter/material.dart';

class Movie {
  final String image, title, description;
  final int price, time, id;
  final Color color;

  Movie({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
    required this.time,
  });
}

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

List<Movie> movies = [
  Movie(
    id: 1, 
    image: "assets/images/blackadam.jpg", 
    title: "Black Adams", 
    price: 20, 
    description: dummyText, 
    color: Color.fromARGB(255, 92, 92, 92), 
    time: 130),
  Movie(
    id: 2, 
    image: "assets/images/BulletTrain.jpeg", 
    title: "Bullet Train", 
    price: 20, 
    description: dummyText, 
    color: Color.fromARGB(255, 138, 117, 117), 
    time: 130),
  Movie(
    id: 3, 
    image: "assets/images/minions.jpg", 
    title: "Minions: The Rise of Gru", 
    price: 20, 
    description: dummyText, 
    color: Color.fromARGB(255, 212, 131, 38), 
    time: 130),
  Movie(
    id: 4, 
    image: "assets/images/thelostcity.jpg", 
    title: "The Lost City", 
    price: 20, 
    description: dummyText, 
    color: Color.fromARGB(255, 50, 67, 68), 
    time: 130),
  Movie(
    id: 5, 
    image: "assets/images/topgun.jpeg", 
    title: "Top Gun: Maveric", 
    price: 20, 
    description: dummyText, 
    color: Color.fromARGB(255, 51, 49, 49), 
    time: 130),
  Movie(
    id: 6, 
    image: "assets/images/woman.jpeg", 
    title: "The Woman King", 
    price: 20, 
    description: dummyText, 
    color: Color.fromARGB(255, 231, 103, 43), 
    time: 130)
];



