import 'package:flutter/material.dart';



class RestaurantProduct {
  final String image, title, description, url;
  final int price, size, id;
  final Color color;
  RestaurantProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.url,
  });
}

List<RestaurantProduct> restaurantproducts = [
  RestaurantProduct(
      id: 1,
      title: ".",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/spa1.png",
      color: Color(0xFF3D82AE),
  url: "https://savingsays.com/birthday-discounts/pure-bliss-spa/"),
  RestaurantProduct(
      id: 2,
      title: ".",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/spa2.png",
      color: Color(0xFFD3A984),
  url: "https://fromtipstotoes.com/birthday-spa-party/"),
  RestaurantProduct(
      id: 3,
      title: ".",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/spa3.jpg",
      color: Color(0xFF989493),
    url: "https://dyannaspa.com/spa_packages_manhattan_nyc/happy-birthday-spa-package/"
  ),
  RestaurantProduct(
      id: 4,
      title: "O",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/spa4.png",
      color: Color(0xFFE6B398),
  url: "https://www.zzdayspa.com/romance?gclid=CjwKCAjwgaeYBhBAEiwAvMgp2ny-ty0vFtHirdOi0k41fUWVuFiXrEMdwlZsijRPixjAQHtBwlMBfRoCCMIQAvD_BwE"),
  RestaurantProduct(
      id: 5,
      title: "A",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/spa1.png",
      color: Color(0xFF3D82AE),
url: "https://savingsays.com/birthday-discounts/pure-bliss-spa/"),
  RestaurantProduct(
      id: 6,
      title: "B",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/spa2.png",
      color: Color(0xFFD3A984),
      url: "https://fromtipstotoes.com/birthday-spa-party/"),
  RestaurantProduct(
      id: 7,
      title: "H",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/spa3.jpg",
      color: Color(0xFF989493),
      url: "https://dyannaspa.com/spa_packages_manhattan_nyc/happy-birthday-spa-package/"),
  RestaurantProduct(
      id: 8,
      title: "O",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/spa4.png",
      color: Color(0xFFE6B398),
      url: "https://www.zzdayspa.com/romance?gclid=CjwKCAjwgaeYBhBAEiwAvMgp2ny-ty0vFtHirdOi0k41fUWVuFiXrEMdwlZsijRPixjAQHtBwlMBfRoCCMIQAvD_BwE"),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";