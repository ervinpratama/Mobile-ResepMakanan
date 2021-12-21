import 'package:flutter/material.dart';
import 'package:resep/views/widget/resep_card.dart';

class DetailResep extends StatelessWidget {
  final String name;
  final String images;
  final String rating;
  final String totalTime;
  final String description;

  DetailResep(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Resep Masakan')
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ResepCard(
                title: name,
                coockTime: totalTime,
                rating: rating,
                thumbnailUrl: images),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22, 
              vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(description,
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
