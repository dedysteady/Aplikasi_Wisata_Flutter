import 'package:flutter/material.dart';

import '../dummy_data.dart'; //FILE DUMMY INI MASIH DIPERLUKAN KARENA DI DALAMNYA AKAN DITAMBAHKAN DATA DUMMY UNTUK PLACES
import '../components/list_place.dart'; //SAMA DENGAN YANG SEBELUMNYA, COMPONENT INI BERISI VIEW UNTUK MENAMPILKAN SETIAP TEMPAT WISATA

class PlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //FUNGSI INI UNTUK MENGAMBIL ARGUMEN YANG DIKIRIMKAN MELALUI NAVIGATION KETIKA KATEGORI DI TAP
    final route =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    //DIMANA ARGUMEN YANG DIKIRIMKAN BERISI KUMPULAN DATA YANG DIDALMNYA ADALAH KEY DAN VALUE
    final id = route['id']; //KITA AMBIL VALUE DARI KEY ID CATEGORY
    final title = route['title']; //VALUE DARI TITLE CATEGORY
    
    //KEMUDIAN BUAT LOGIC UNTUK MENGAMBIL DATA TEMPAT BERDASARKAN ID CATEGORI DAN DITEMPATKAN KE DALAM VARIABLE placeLists
    final placeLists = PLACES_DUMMY_DATA.where((place) {
      return place.category == id;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata " + title), //BUAT APPBAR LAGI DIMANA TITLE DIAMBIL DARI TITLE DIATAS
      ),
      //KEMUDIAN LOOPING DATANYA MENGGUNAKAN LISTVIEW BUILDER
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          //LOAD COMPONENT LISTPLACE DENGAN MENGIRIMKAN DATA YANG AKAN DITAMPILKAN
          return ListPlace(
            placeLists[index].id,
            placeLists[index].name,
            placeLists[index].image,
            placeLists[index].description,
          );
        },
        itemCount: placeLists.length, //TOTAL DATA YANG AKAN LOOPING
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: (){},
      ),
    );
  }
}