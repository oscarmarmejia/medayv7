
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../constants.dart';


AppBar buildAppBar(context) {
  return AppBar(
    backgroundColor:  Colors.white,
    elevation: 0,
    title: Center(child: Text("MeDay", style: TextStyle(color: Colors.black, fontSize: 40), )),
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: (){},
    ),
    actions: <Widget>[

      IconButton( icon: SvgPicture.asset("assets/icons/back.svg", color: kTextColor),onPressed: (){


        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Sending Message"),
        ));

        showSearch(context: context, delegate: Delegate(),);

      },
      ),
      //IconButton(icon: SvgPicture.asset("assets/icons/cart.svg", color:kTextColor), onPressed: () {  },),
      SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}

class Delegate  extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}