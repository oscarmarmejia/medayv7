import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medayv7/models/RestaurantProduct.dart';
import 'package:medayv7/screens/home/components/product_title_with_image_restaurant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';


class BodyRestaurant extends StatelessWidget {

  final RestaurantProduct product;

  const BodyRestaurant({Key? key, required this. product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height *0.8,
            child: Stack(
              children: <Widget>[
                Container(

                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.01, left: kDefaultPaddin, right: kDefaultPaddin),
                  height: double.infinity,
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Description(product: product),
                      Container(
                        constraints: BoxConstraints.tightForFinite( height: 250),
                        padding: EdgeInsets.all(8),
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(color: Colors.pink,
                            shape: BoxShape.circle),
                        child: SvgPicture.asset("assets/icons/heart.svg") ,
                      ),




                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    constraints: BoxConstraints.tightForFinite(width: 800, height: 600),
                    child: RatingBar.builder(  minRating: 1, itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber), onRatingUpdate: (rating){})

                ),
                Positioned(
                  left: MediaQuery.of(context).size.width/5.2,
                  top: MediaQuery.of(context).size.height/2.4,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(50),
                    child: TextButton(child:

                    Text("go for the deal!", style: TextStyle(fontSize: 15),

                    ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrangeAccent)))

                      ),

                      onPressed: () async =>{

                        await launch(product.url)

                      },
                    ),
                  ),
                ),
                ProductTitleWithImageRestaurant(product: product),
              ],
            ),
          )



        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final RestaurantProduct product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(product.description, style: TextStyle(height: 1.5 ),),
    );
  }
}
