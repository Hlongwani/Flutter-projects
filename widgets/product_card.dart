

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:frontend/screens/product_screen.dart';


 class ProductCard extends StatelessWidget {
  String img;
   ProductCard(this.img);

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Color.fromARGB(255,244, 244, 244),
            child: Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>ProductScreen(img)));
                  },
                  child: Image.asset(
                    "images/${img}.jpg",
                    scale: 8.0,
                    fit: BoxFit.cover,
                    height: 230,
                    ),

                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(padding : EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F8FA),
                      borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: Colors.red,
                      ),
                    ),
                    ),
                    ),
              ] ,
            ),
          ),
          ),
       ],
    );
  }
}