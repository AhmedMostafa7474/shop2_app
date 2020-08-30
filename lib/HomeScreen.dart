import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailsScreen.dart';
import 'Products.dart';
import 'const.dart';
class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
 static int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    List<String> cat=["Formal Shoes","Football shoes","Women Shoes"];
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefulpadding),
            child: Container(alignment: Alignment.topLeft,
                child: Text("Shoes",style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),)),
          ),
          buildchoices(cat),
          Girdview(),
        ],
      ),
    );
  }

  Expanded Girdview() {
   List <product> k;
    if(selectedindex==0)
      {
        k=products;
      }
    else if(selectedindex==1)
      {
        k=productfoot;
      }
    else if(selectedindex ==2)
      {
        k=productsWomen;
      }
    return Expanded(
            child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefulpadding),
              child:
              GridView.builder(itemCount: 6,gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
                ,crossAxisSpacing: kDefulpadding,
                mainAxisSpacing: kDefulpadding,
                childAspectRatio: .75,
              ),
                  itemBuilder: (context,index)=>Card(k[index])),
            )
        );
  }
  Expanded Girdview2() {
    return Expanded(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefulpadding),
          child:
          GridView.builder(itemCount: 6,gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
            ,crossAxisSpacing: kDefulpadding,
            mainAxisSpacing: kDefulpadding,
            childAspectRatio: .75,
          ),
              itemBuilder: (context,index)=>Card(productfoot[index])),
        )
    );
  }
  Expanded Girdview3() {
    return Expanded(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefulpadding),
          child:
          GridView.builder(itemCount: 6,gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
            ,crossAxisSpacing: kDefulpadding,
            mainAxisSpacing: kDefulpadding,
            childAspectRatio: .75,
          ),
              itemBuilder: (context,index)=>Card(productsWomen[index])),
        )
    );
  }

  GestureDetector Card(productss) {
    final product product1=productss;
    return GestureDetector(
      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>detailsScreen(product2:product1)))
      ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Expanded(
          //child:
          Container(
            height: 150,
            width: 160,
            padding: EdgeInsets.all(kDefulpadding),
            decoration: BoxDecoration(
              //color: product1.color,
              borderRadius: BorderRadius.circular(16),

            ),
            child: Image.asset(product1.image),
          ),
          //),
          Padding(padding:EdgeInsets.symmetric(vertical: kDefulpadding/4) ,
            child: Text(product1.title,style: TextStyle(
                color: kTextLIGHCol
            ),) ,),
          Text("${product1.price} \$",style: TextStyle(
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }

  Padding buildchoices(List<String> cat) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefulpadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          itemBuilder: (context,index)=>GestureDetector(
            onTap: (){
              setState(() {
                selectedindex=index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefulpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cat[index],style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedindex== index ? kTextCol : kTextLIGHCol ,
                  ) ,),
                  Container(
                    color: selectedindex== index ? Colors.black : Colors.transparent,
                    height: 2,
                    width: 30,
                    margin: EdgeInsets.only(top: kDefulpadding/4),
                  )
                ],
              ),
            ),
          ),
          itemCount: cat.length,
          scrollDirection: Axis.horizontal,),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.arrow_back,color: kTextCol),),
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
