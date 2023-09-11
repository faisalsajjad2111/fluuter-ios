import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(          
      resizeToAvoidBottomInset : false,
      
       body:SingleChildScrollView(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          SizedBox(height: 20),
          Carousel(
            indicatorBarColor: Colors.transparent,
            autoScroll:true,
            height:250,
            items:[
              Image.asset("assets/slide1.png"),
              Image.asset("assets/slide2.png"),
              Image.asset("assets/fruit_salad.png")
            ]
          ),
          SizedBox(height: 20),
          Text("Meditarrina",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
           Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Chickpaa salad",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
               
          ),),
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black87,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 15,
                ),
              ),
                 Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black87,
                ),
                child: Icon(
                  CupertinoIcons.minus,
                  color: Colors.white,
                  size: 15,
                ),
             
              )
              
            ],
            
          )
          
        ],
        
      )
      
      ),
      

 SizedBox(height: 20),     
Row(children: [
  Text(
    "Delivery time",
    style: TextStyle(
      fontSize: 15,
      color: Colors.black54,
      fontWeight: FontWeight.w500,
    ),
  ),
  SizedBox(width: 30),
  Icon(CupertinoIcons.time,),
  Text(
  "30 min",
  style: TextStyle(
    fontWeight: FontWeight.bold,
  ),  
  )
],

),
SizedBox(height: 30,),
Padding(padding: EdgeInsets.only(right: 15),
child: Stack(alignment: Alignment.center,
children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "total price",
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Text("\$28.00",
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 20,
        color: Colors.black,
      ),
      )
    ],
  ),
  Container(
    height: 40,
    width: 140,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(padding: EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Add to cart",
          style: TextStyle(
            fontSize: 13,
            color: Colors.white
          ),
        )
      ],
    ),
    ),
  )
],),)




        ]
      )
      )


    
      
    );
  }
}