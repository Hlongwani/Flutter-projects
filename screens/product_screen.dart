import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  String img;
  ProductScreen(this.img);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height /1.7,
              decoration: BoxDecoration(color: Color.fromARGB(255, 224, 244, 244),
              image: DecorationImage(
                image: AssetImage("images/${img}.jpg"))
              ),
              child: Padding
              (padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size :22,
                  ),
                ),
                ),
                InkWell(
                   onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.favorite,
                    size :22,
                    color: Colors.red,
                  ),
                ),
                ),
                 InkWell(
                  onTap: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 17, horizontal: 65),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 137, 9), 
                  borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Buy Now",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  ),
                  ),
                ),
                
                ],
              ),
              ),
              )]
              ,)
              ),
    );
  }
}