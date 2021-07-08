import 'package:flutter/foundation.dart';

class Category {
  //DEFINISIKAN SELURUH VARIABLE YANG DIINGINGKAN
  final String id;
  final String title;
  final String description;
  final String image;

  //KEMUDIAN BUAT CONSTRUCTOR UNTUK MEMINTA DATA TERSEBUT
  //KITA MENGGUNAKAN REQUIRED MAKA DIPERLUKAN UNTUK MENGIMPORT foundation.dart
  const Category({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.image
  });
}