import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medayv7/constants.dart';

import '../../../models/Product.dart';
import '../../home/components/product_title_with_image.dart';

class Body extends StatelessWidget {

 final Product product;

  const Body({Key? key, required this. product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height,
          child: Stack(
            children: <Widget>[
              Container(

                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(top: size.height * 0.12, left: kDefaultPaddin, right: kDefaultPaddin),
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

                      padding: EdgeInsets.all(8),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(color: Colors.pink,
                      shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/icons/heart.svg") ,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.all(32),
                      child: TextButton(child:

                                          Text("go for the deal!", style: TextStyle(fontSize: 15),

                                                                   ),
                                           style: ButtonStyle(
                                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                             foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                             shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                                             side: BorderSide(color: Colors.deepOrangeAccent)))

                                                               ),

                                           onPressed: (){},
                                     ),
                                  ),



                  ],
                ),
              ),

              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(60),
                child: TextButton(child:

                Text("go for the deal!", style: TextStyle(fontSize: 15),

                ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.deepOrangeAccent)))

                  ),

                  onPressed: (){},
                ),
              ),
              ProductTitleWithImage(product: product),
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

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(product.description, style: TextStyle(height: 1.5 ),),
    );
  }
}
