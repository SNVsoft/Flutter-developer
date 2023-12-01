import 'package:flutter/material.dart';

class Scroller extends StatelessWidget {
  final List<String> imageUrls = [
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    // Add more image URLs here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            margin: EdgeInsets.all(8),
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover, // Adjust the image fit as needed
            ),
          );
        },
      ),
    );
  }
}
