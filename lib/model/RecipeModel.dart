import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:resep/model/GambarModel.dart';

List RecipeModelFromJson(String str) => List.from(json.decode(str).map((x) => RecipeModel.fromJson(x)));
String RecipeModelToJson(List data) => json.encode(List.from(data.map((x) => x.toJson())));

class RecipeModel {
  int id;
  String judul, penulis, deskripsi;
  int waktuMasak;
  int penyajian;
  String komposisi;
  String imgPath;
  List<GambarModel> gambars;

  static var demoRecipe;


  RecipeModel({
    this.id,
    this.judul,
    this.penulis,
    this.deskripsi,
    this.waktuMasak,
    this.penyajian,
    this.gambars,
    this.komposisi,
  });

RecipeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    judul = json['judul'];
    penulis = json['penulis'];
    deskripsi = json['deskripsi'];
    waktuMasak = json['waktuMasak'];
    penyajian = json['penyajian'];
    gambars = json['gambars']
        .map<GambarModel>((gallery) => GambarModel.fromJson(gallery))
        .toList();
    komposisi = json['komposisi'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'judul': judul,
      'penulis': penulis,
      'deskripsi': deskripsi,
      'waktuMasak': waktuMasak,
      'penyajian': penyajian,
      'gambars': gambars.map((gallery) => gallery.toJson()).toList(),
      'komposisi': komposisi,
    };
  }
}
class UninitializedProductModel extends RecipeModel {}