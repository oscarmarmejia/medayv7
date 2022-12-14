import 'package:flutter/material.dart';
import 'package:medayv7/models/Product.dart';

import '../../../constants.dart';
import '../../details/details_screen.dart';
import '../../home_screen.dart';
import '../beauty_screen.dart';



class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Restaurants", "Beauty", "Bars", "Events"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),

      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap:(){

        setState(() {
          selectedIndex = index;
          if(index==0){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomeScreen()));

          }
          if(index ==1) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BeautyScreen()));
          }

        });

      },

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin/4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,

            )
          ],
        ),
      ),
    );


  }
}

