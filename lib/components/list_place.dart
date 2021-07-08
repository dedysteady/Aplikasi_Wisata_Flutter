import 'package:flutter/material.dart';

class ListPlace extends StatelessWidget {
  //DEFINISIKAN VARIABLE UNTUK MENAMPUNG DATA YANG DITERIMA
  final String id;
  final String name;
  final String image;
  final String description;

  //MENERIMA DATA YANG DIKIRIMKAN MELALUI CONSTRUCTOR
  ListPlace(this.id, this.name, this.image, this.description);

  void goToDetail(BuildContext context) {
   Navigator.of(context).pushNamed('/detail', arguments: id); //Kosongkan lagi bagian ini untuk saat ini

  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        //MENGGUNAKAN LIST TILE UNTUK MENAMPILKAN DATA TEMPATNYA
        child: ListTile(
          leading: Image.network(image), //BAGIAN KIRI ADALAH ME-LOAD GAMBAR
          title: Text(name), //BAGIAN TENGAH AKAN MENAMPIKAN NAMA TEMPAT WISATANYA
          subtitle: Text(description.substring(0, 100) + '...'), //DIBAWAH TITLE AKAN MENAMPILKAN DESKRIPSI SINGKAT YANG DILIMIT HANYA 100 HURUF
          onTap: () => goToDetail(context), //KETIKA DITAP AKAN MEJALAN METHOD goToDetail()
        ),
      ),
    );
  }
}
