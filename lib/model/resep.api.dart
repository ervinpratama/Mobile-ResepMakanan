import 'dart:convert';
import 'dart:html';
import 'package:resep/model/resep.dart';
import 'package:http/http.dart' as http;
import 'package:resep/model/resep.dart';

class ResepApi{

//   var unirest = require("unirest");

// var req = unirest("GET", "https://yummly2.p.rapidapi.com/feeds/list");

// req.query({
	// "limit": "18",
	// "start": "0",
	// "tag": "list.recipe.popular"
// });

// req.headers({
	// "x-rapidapi-host": "yummly2.p.rapidapi.com",
	// "x-rapidapi-key": "98b2e52d2amshbf42ea3127699f3p16bebejsn2a1e12a0fcfd",
	// "useQueryString": true
// });

static Future<List<Resep>> getResep() async {
  var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list', {
 	"limit": "18", "start": "0", "tag": "list.recipe.popular"  });

  final response = await http.get(uri, headers: {
	"x-rapidapi-host": "yummly2.p.rapidapi.com",
	"x-rapidapi-key": "98b2e52d2amshbf42ea3127699f3p16bebejsn2a1e12a0fcfd",
	"useQueryString": "true"
  });

  Map data = jsonDecode(response.body);

  List temp = [];

  for(var i in data['feed']){
    _temp.add(i['content']['details']);
  }

  return Resep.resepFromSnapshot(_temp); 
  

}

}