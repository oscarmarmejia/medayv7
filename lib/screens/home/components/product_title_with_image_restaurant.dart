import 'package:flutter/material.dart';
import 'package:medayv7/models/RestaurantProduct.dart';

import '../../../constants.dart';


class ProductTitleWithImageRestaurant extends StatelessWidget {
  const ProductTitleWithImageRestaurant({
    Key? key,
    required this.product,
  }) : super(key: key);

  final RestaurantProduct product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /*
          Text(product.title, style: TextStyle(color:Colors.white),
        ),

           */
          /*
          Text(product.title, style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),


          ),

           */

          Row(
            mainAxisAlignment : MainAxisAlignment.center,

            children: <Widget>[
              RichText(text: TextSpan(
                  children: [/*
                    TextSpan(text: ""), TextSpan(text: "\$${product.title}",
                      style: Theme.of(context).textTheme
                          .headline4?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    */
                  ]
              ),
              ),

              Container( width: 200, height: 200,
                child: Expanded(child: Image.asset(product.image, fit: BoxFit.fill,),


                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
