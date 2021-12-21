import 'dart:convert';
import 'dart:html';
import 'package:resep/model/resep.dart';
import 'package:http/http.dart' as http;
import 'package:resep/model/resep.dart';

class ResepApi {
  static Future<List<Resep>> getResep() async {
    var uri = Uri.https('/tasty.p.rapidapi.com', '/recipes/list',
        {"from": "0", "size": "20", "tags": "under_30_minutes"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-host": "tasty.p.rapidapi.com",
	    "x-rapidapi-key": "7ff6557493mshaedd4398ed2997dp1b73d5jsn91db151c91f9",
	    "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);

    List _temp = [];

    for (var i in data['results']) {
      _temp.add(i);
    }

    return Resep.resepFromSnapshot(_temp);
  }
}
