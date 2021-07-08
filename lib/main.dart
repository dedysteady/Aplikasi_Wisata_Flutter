

import 'package:flutter/material.dart';



import './screens/category_screen.dart';
import 'places/places_screen.dart';
import 'screens/detail_screen.dart'; //import file categoryscreen yang nantinya berfungsi untuk menampilkan list kategori

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { 



 
  @override

  
  Widget build(BuildContext context) {

    
    var copyWith = ThemeData.light().textTheme.copyWith(
          // ignore: deprecated_member_use
          title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), //TITLE KITA GUNAKAN BOLD DAN SIZE 20
          // ignore: deprecated_member_use
          subhead: TextStyle(fontWeight: FontWeight.bold), //SUBHEADNYA CUKUP BOLD SAJA
        );
    return MaterialApp(
      title: 'Aplikasi Berita',
      //KITA SET THEME-NYA SECARA UMUM AGAR KETIKA MELAKUKAN PERUBAHAN, CUKUP PADA SETTING DIBAWAH AKAN MEMBERIKAN EFEK KE SEMUA PAGE YANG ADA
      theme: ThemeData(
        primaryColor: Colors.pinkAccent, //WARNA UTAMA KITA GUNAKAN pinkAccent
        accentColor: Colors.pink, //SECONDARY COLORNYA KITA SET KE PINK
        canvasColor: Color.fromRGBO(255, 254, 229, 1), //WARNA BACKGROUND CANVASNYA PAKAI RGBO DIMANA CODE DIATAS AKAN MENGHASILKAN WARNA KUNING 
      
        //SET JUGA KONFIGURASI UNTUK TEXT-NYA
        textTheme: copyWith
      ),
        
      //SET ROUTING YANG AKAN MENGATUR ALUR APLIKASI
      routes: {
        '/': (ctx) => CategoryScreen(),  //DIMANA ROOT ROUTINGNYA AKAN ME-LOAD CategoryScreen
        '/places': (ctx) => PlacesScreen(),
        '/detail': (ctx) => DetailScreen() //TAMBAHKAN LINE INI
},// TANDA / BERARTI SECARA DEFAULT KETIKA APLIKASI DI-LOAD MAKA ROUTE TERSEBUT AKAN DIJALANKAN
      
  
    );
  }
}
