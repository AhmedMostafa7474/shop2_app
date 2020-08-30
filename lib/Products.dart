import 'dart:core';
import 'package:flutter/material.dart';

class product
{
  String image ,describtion,title;
  int price ,size,id;
  final Color color;

  product(
      {
        this.id,
        this.image,
        this.describtion,
        this.price,
        this.size,
        this.title
        ,this.color
      }
      );
}
List<product> products=[
  product(
    image: "assets/men_shoes_PNG7470.png",
    title: "disneyland"
    ,price:  300,
    size:  42,
    color:Color(0xFF9B3C28) ,
    //describtion: ,
    id: 1 ,

  ),
  product(
    image: "assets/men_shoes_PNG7474.png",
    title: "disneyland"
    ,price:  350,
    size:  45,
    color:Color(0xFFD1C5C3) ,
    describtion:"sss" ,
    id: 2 ,

  ), product(
    image: "assets/men_shoes_PNG7475.png",
    title: "disneyland"
    ,price:  250,
    size:  43,
    color:Color(0xFF9E9C9C) ,
    //describtion: ,
    id: 3 ,

  ), product(
    image: "assets/men_shoes_PNG7477.png",
    title: "disneyland"
    ,price:  456,
    size:  45,
    color:Color(0xFFBD6868) ,
    //describtion: ,
    id: 4 ,

  ), product(
    image: "assets/men_shoes_PNG7479.png",
    title: "disneyland"
    ,price:  400,
    size:  46,
    color:Color(0xFF1B1919) ,
    //describtion: ,
    id: 5 ,

  ),
  product(
    image: "assets/men_shoes_PNG7478.png",
    title: "disneyland"
    ,price:  333,
    size:  40,
    color:Color(0xFF2F1B1B) ,
    //describtion: ,
    id: 6 ,

  )
];
List<product> productfoot=[
  product(
    image: "assets/addidasfootbal3.png",
    title: "addidas"
    ,price:  300,
    size:  42,
    color:Colors.white ,
    //describtion: ,
    id: 1 ,

  ),
  product(
    image: "assets/bumafootball.png",
    title: "buma"
    ,price:  350,
    size:  45,
    color:Colors.black26 ,
    describtion:"sss" ,
    id: 2 ,

  ), product(
    image: "assets/addidasfootball.png",
    title: "addidas"
    ,price:  250,
    size:  43,
    color:Colors.brown ,
    //describtion: ,
    id: 3 ,

  ), product(
    image: "assets/addidasfootball2.png",
    title: "addidas"
    ,price:  456,
    size:  45,
    color:Color(0xFFBD6868) ,
    //describtion: ,
    id: 4 ,

  ), product(
    image: "assets/Nikefootball.png",
    title: "Nike"
    ,price:  400,
    size:  46,
    color:Colors.lightGreen ,
    //describtion: ,
    id: 5 ,
  ),
  product(
    image: "assets/football1.png",
    title: "activ"
    ,price:  333,
    size:  40,
    color:Colors.blue ,
    //describtion: ,
    id: 6 ,
  )
];
List<product> productsWomen=[
  product(
    image: "assets/womanShoes.png",
    title: "WomenShoes"
    ,price:  300,
    size:  42,
    color:Colors.black38 ,
    //describtion: ,
    id: 1 ,

  ),
  product(
    image: "assets/womanShoes2.png",
    title: "WomenShoes"
    ,price:  350,
    size:  45,
    color:Colors.white54 ,
    describtion:"sss" ,
    id: 2 ,

  ), product(
    image: "assets/womanShoes3.png",
    title: "WomenShoes"
    ,price:  250,
    size:  43,
    color:Colors.redAccent ,
    //describtion: ,
    id: 3 ,

  ), product(
    image: "assets/womanShoes4.png",
    title: "WomenShoes"
    ,price:  456,
    size:  45,
    color:Color(0xFF1B1919),
    //describtion: ,
    id: 4 ,

  ), product(
    image: "assets/womanShoes5.png",
    title: "WomenShoes"
    ,price:  400,
    size:  46,
    color:Colors.white30 ,
    //describtion: ,
    id: 5 ,

  ),
  product(
    image: "assets/womanShoes6.png",
    title: "WomenShoes"
    ,price:  333,
    size:  40,
    color:Colors.black ,
    //describtion: ,
    id: 6 ,

  )
];