import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  //KARENA ADA DATA YANG DIKIRIM DARI FILE YANG MEMANGGILNYA MAKA KITA PERLU MENDEFINISIKAN DATA YANG AKAN DITERIMA
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  //KEMUDIAN BUAT CONSTRUCTOR UNTUK MENERIMA DATA TERSEBUT
  ListCategory(this.id, this.title, this.description, this.imageUrl);

  //METHOD INI AKAN BERJALAN KETIKA TOMBOL KATEGORI DI TAP (KLIK)
  void goToNewScreen(BuildContext context) {
  //FUNGSI INI AKAN MEMBERIKAN INSTRUKSI UNTUK MEMBUAT SCREEN PLACES YANG NNTINYA AKAN DIDEFINSIKAN ROUTINGNYA DAN MENGIRIMKAN ARGUMENT BERUPA ID, TITLE DAN DESCRIPTION
  Navigator.of(context).pushNamed('/places', arguments: {'id': id, 'title': title, 'description': description});
}


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToNewScreen(context), //KETIKA DITAP MAKA MEMANGGIL METHOD DIATAS
      highlightColor: Colors.white.withAlpha(30),
      splashColor: Colors.white.withAlpha(20),
      child: Card(
        elevation: 5,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //BAGIAN PERTAMA DARI CARD KITA AKAN MENAMPIKKAN GAMBAR
              Padding(
                padding: EdgeInsets.only(top: 10),
                //DIMANA GAMBARNYA DIAMBIL DARI URL YANG TELAH DIDEFINISIKAN PADA DATA DUMMY
                child: Image.network(
                  imageUrl,
                  height: 65,
                  width: double.infinity, //BESAR GAMBARNYA SEBESAR MUNGKIN DARI ELEMEN YG TERSEDIA
                ),
              ),
              //ANTARA GAMBAR DAN TEXT KITA BUAT JARAK MENGGUNAKAN SIZEDBOX
              SizedBox(
                height: 4,
              ),
              //TEXT UNTUK MENAMPILKAN NAMA KATEGORINYA
              Center(
                  // ignore: deprecated_member_use
                  child: Text(title, style: Theme.of(context).textTheme.title))
            ],
          ),
        ),
      ),
    );
  }
}