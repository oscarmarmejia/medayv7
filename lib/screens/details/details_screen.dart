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
      actions: <Widget>[
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search.svg"),

        ),
SizedBox(width: kDefaultPaddin/2),
      ],
    );
  }

}