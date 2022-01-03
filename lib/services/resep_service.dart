import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:resep/model/RecipeModel.dart';

class ResepService {

  //Hosted BASE URL
  String baseUrl = 'http://127.0.0.1:8000/api';

  Future<List<RecipeModel>> getProducts() async {
    var url = '$baseUrl/resep';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<RecipeModel> resep = [];

      for (var item in data) {
        resep.add(RecipeModel.fromJson(item));
      }

      return resep;
    } else {
      throw Exception('Data Gagal Di Unduh');
    }
  }

  getResep() {}
}