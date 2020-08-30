import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Products.dart';
import 'const.dart';
class detailsScreen extends StatelessWidget {
  Color color;
  final product product2;
  detailsScreen(
      {
        this.product2,
      }
      );
  @override
  Widget build(BuildContext context) {
    int num=1;
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body:
      SingleChildScrollView(
        child: Column(
          children: <Widget> [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  buildimg(context),
                  Container(
                    margin: EdgeInsets.only(top: size.height *.5),
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))
                    ),
                    child:
                    Column(
                      children: [
                        buildcolandsize(context,product2),
                      SizedBox(height: 80.0,)
                      ,
                        buildcounter(num, context,product2),
                         Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: double.infinity,
                    child:
                    RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      color: Colors.blue
                      ,
                      child: Text("Buy Now", style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                          ,
                          fontFamily: "OpenSans"
                          ,
                          letterSpacing: 1.5
                          ,
                          color: Colors.black54)),),
                  )

                      ],

                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      )
      ,
    );
  }

  Row buildcounter(int num, BuildContext context,product) {
    return Row(
      children:<Widget> [
        buildincremnt(Icon(Icons.remove), (){
          setState() {
            num++;
          };
        }),
        Padding(padding: EdgeInsets.symmetric(horizontal: kDefulpadding/2),
          child: Text(num.toString().padLeft(2,"0"),style: Theme.of(context).textTheme.headline5,),
        ),
        buildincremnt(Icon(Icons.add),(){
          setState(){
            num++;
          }
        }),
      ],
    );
  }

  SizedBox buildincremnt(Icon1,Function press,) {
    Icon ico=Icon1;
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(onPressed: (){

      },
          padding: EdgeInsets.zero
          ,shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13)
          )
          ,
          child: ico
      ),

    );
  }

  Row buildcolandsize(BuildContext context,product) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children:<Widget> [
              Container(alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10.0)
                  ,
                  child: Text("Color")),
              Row(children:[
                buildColor(product2.color,true),
                buildColor(Color(0xFF9B3C28),false),
                buildColor(Color(0xFFD1C5C3),false),
              ]
              )
            ],
          ),
        ),
        RichText(text: TextSpan(
            children: [
              TextSpan(text: "Size\n",style: TextStyle(
                  color: kTextCol
              ) ),
              TextSpan(text: "${product2.size}",style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold))
            ]
        ))
      ],
    );
  }

  Container buildColor(Color c,bool x) {
    Color color2=c;
    bool isselected=x;
    return Container(
        margin: EdgeInsets.only(
          left: kDefulpadding/4,
          right: kDefulpadding/4,
        ),
        padding: EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: isselected==true? color2:Colors.transparent
            )
        ),
        child:
        DecoratedBox(decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color2,
        ),
        )
    );
  }

  Padding buildimg(BuildContext context) {
    print(product2.title);
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefulpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Text("Formal Shoes",style:Theme.of(context).textTheme.headline5.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ) ,),
          Row(
            children:<Widget> [
              RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n",style: TextStyle(color: Colors.black)),
                    TextSpan(text: "\$${product2.price}",style:Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),)
                  ]
              )),
              SizedBox(width: kDefulpadding,),
              Expanded(child: Image.asset(product2.image,fit: BoxFit.fill,))
            ],
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(context1) {
    return AppBar(
      backgroundColor: product2.color,
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.arrow_back,color: kTextCol),onPressed: ()=> Navigator.pop(context1),),
      actions: <Widget>[
        IconButton(
          icon: (Icon(Icons.search,color: kTextCol,)),
        ),
        IconButton(
          icon: (Icon(Icons.shopping_cart,color: kTextCol,)),
        ),
        SizedBox(width: kDefulpadding/2,),
      ],
    );
  }
}
