import 'package:flutter/material.dart';
import 'package:medayv7/constants.dart';
import 'package:medayv7/models/Product.dart';
import 'package:medayv7/screens/details/details_screen.dart';

import 'categorries.dart';
import 'item_card.dart';


class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
  SizedBox(height: 10,),
        Categories(),
        Expanded(
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
             //   crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75),


            itemBuilder: (context, index)=> ItemCard( product : products[index],
                press: () => Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> DetailScreen(product: products[index])))),),)

      ],
    );
  }
}

