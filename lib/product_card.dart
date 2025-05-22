import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backGroundColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 5),
          Text('\$$price', style: Theme.of(context).textTheme.bodySmall),
          SizedBox(height: 5),
          Image(image: AssetImage(image)),
        ],
      ),
    );
  }
}
