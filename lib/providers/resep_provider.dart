import 'package:flutter/material.dart';
import 'package:resep/model/RecipeModel.dart';
import 'package:resep/services/resep_service.dart';


class ResepProvider with ChangeNotifier {
  List<RecipeModel> _resep = [];

  List<RecipeModel> get resep => _resep;

  set resep(List<RecipeModel> resep) {
    _resep = resep;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<RecipeModel> resep = await ResepService().getResep();
      _resep = resep;
    } catch (e) {
      print(e);
    }
  }
}