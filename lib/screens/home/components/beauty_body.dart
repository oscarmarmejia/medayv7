import 'package:flutter/material.dart';
import 'package:medayv7/screens/details/components/detail_screen_restaurant.dart';
import 'package:medayv7/screens/home/components/beauty_categories.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../models/RestaurantProduct.dart';
import '../../details/details_screen.dart';
import 'categorries.dart';
import 'item_card.dart';
import 'item_card_restaurant.dart';


class BeautyBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10,),
        BeautyCategories(),
        Expanded(
          child: GridView.builder(
            itemCount: restaurantproducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                //   crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75),


            itemBuilder: (context, index)=> ItemCardRestaurant( product: restaurantproducts[index],
                press: () => Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> DetailScreenRestaurant(product: restaurantproducts[index])))),),)

      ],
    );
  }
}

