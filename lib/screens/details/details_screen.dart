import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medayv7/constants.dart';
import 'package:medayv7/models/Product.dart';
import 'package:medayv7/screens/details/components/body.dart';


class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
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
      backgroundColor:  Colors.transparent,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset(
        'assets/icons/back.svg', color: Colors.white,),
        onPressed: () => Navigator.pop(context),
      ),

    );
  }

}