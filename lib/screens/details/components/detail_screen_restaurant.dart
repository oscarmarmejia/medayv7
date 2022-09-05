import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/RestaurantProduct.dart';
import 'body_restaurant.dart';




class DetailScreenRestaurant extends StatelessWidget {
  final RestaurantProduct product;

  const DetailScreenRestaurant({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: BodyRestaurant(product: product),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.favorite), label: "saved"),
        NavigationDestination(icon: Icon(Icons.search), label: "search "),
        NavigationDestination(icon: Icon(Icons.more_horiz), label: "more"),
      ],


      ),

    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset(
        'assets/icons/back.svg', color: Colors.white,),
        onPressed: () => Navigator.pop(context),
      ),

    );
  }

}