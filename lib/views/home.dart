import 'package:flutter/material.dart';
import 'package:resep/views/widget/resep_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        body: ResepCard(
            title: 'Resep Masakan',
            rating: '4.9',
            coockTime: '30 min',
            thumbnailUrl: 'https://lh3.googleusercontent.com/pzjEu68JYRa8wPgUa2mwb_S1Js8USaa2f5PcMcLGOGo9OhJdVz65tQauj9De4AgcRuqzCpZ5wZ0QaRJOOsjn=s360'));
  }
}
