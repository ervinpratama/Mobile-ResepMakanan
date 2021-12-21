import 'package:flutter/material.dart';

class ResepCard extends StatelessWidget {
  final String title;
  final String rating;
  final String coockTime;
  final String thumbnailUrl;

  const ResepCard(
      {required this.title,
      required this.rating,
      required this.coockTime,
      required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.6),
                offset: Offset(0.0, 10.0),
                blurRadius: 10.0,
                spreadRadius: -6.0),
          ],
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.35), BlendMode.multiply),
              image: NetworkImage(thumbnailUrl),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Align(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 19),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () => {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Play Video')
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(coockTime),
                    ],
                  ),
                ),
              ],
            ),
            alignment: Alignment.bottomLeft,
          )
        ],
      ),
    );
  }
}