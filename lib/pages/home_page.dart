import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: Text(
          "Home page",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Column(
        children: [
          Costummenu(imageAssets: "asset/img.png", title: "Persegi"),
          Costummenu(imageAssets: "asset/img2.png", title: "Segitiga"),


        ],
      ),
    );
  }
}



class Costummenu extends StatelessWidget {
  const Costummenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.greenAccent
      ),
      child:  Column(
        children: [
          Image.asset(imageAssets, height: 55),
          Text(title),
        ],
      ),
    );
  }
}
