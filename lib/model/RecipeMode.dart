import 'package:flutter/material.dart';

class RecipeModel {
  String judul, penulis, deskripsi;
  int waktuMasak;
  int penyajian;
  List<String> komposisi = [];
  String imgPath;
  RecipeModel({
    @required this.judul,
    @required this.penulis,
    @required this.deskripsi,
    @required this.waktuMasak,
    @required this.penyajian,
    @required this.imgPath,
    @required this.komposisi,
  });
  static List<RecipeModel> demoRecipe = [
    RecipeModel(
      judul: ,
      penulis: ,
      deskripsi: ,
      waktuMasak: ,
      penyajian: ,
      imgPath: ,
      komposisi: [
      ],
    ),
    RecipeModel(
      judul: ,
      penulis: ,
      deskripsi: ,
      waktuMasak: ,
      penyajian: ,
      imgPath: ,
      komposisi: [
      ],
    ),
    RecipeModel(
      judul: ,
      penulis: ,
      deskripsi: ,
      waktuMasak: ,
      penyajian: ,
      imgPath: ,
      komposisi: [
      ],
    ),
    RecipeModel(
      judul: ,
      penulis: ,
      deskripsi: ,
      waktuMasak: ,
      penyajian: ,
      imgPath: ,
      komposisi: [
      ],
    ),
  ];
}
