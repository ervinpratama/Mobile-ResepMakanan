import 'package:flutter/material.dart';
import 'package:resep/model/resep.api.dart';
import 'package:resep/model/resep.dart';
import 'package:resep/views/widget/resep_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
 late List<Resep> _resep; 
bool isLoading = true;

@override
void initstate() {
  super.initState();
  getResep();
}

Future<void> getResep() async {
  _resep = await ResepApi.getResep();
  setState(() {
    _isLoading = false ; 
  });
}


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
        body: _isLoading ? Center(child: CircularProgressIndicator()) :
        ListView.builder(itemCount: _resep.length,
        itemBuilder: (context, index){
          return ResepCard(
            title: _resep[index].name,
            coockTime: _resep[index].totalTime,
            rating: _resep[index].rating.toString(),
            thumbnailUrl: _resep[index].images,
            )
        },)
  }
}
