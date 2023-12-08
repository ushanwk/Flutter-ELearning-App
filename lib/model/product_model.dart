import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id, courses;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
Product(
id: 1,
title: "Graphic Design",
image: "assest/image/graphics.png",
color: Color(0xFF71b8ff),
courses: 16,
),
Product(
id: 2,
title: "Programming",
image: "assest/image/programming.png",
color: Color(0xFFff6374),
courses: 22,
),
Product(
id: 3,
title: "Finance",
image: "assest/image/finance.png",
color: Color(0xFFffaa5b),
courses: 15,
),
Product(
id: 4,
title: "UI/Ux design",
image: "assest/image/ux.png",
color: Color(0xFF9ba0fc),
courses: 18,
)];