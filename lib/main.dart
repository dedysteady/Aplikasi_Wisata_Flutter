import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:splashscreen/splashscreen.dart';
import './screens/category_screen.dart';
import 'places/places_screen.dart';
import 'screens/detail_screen.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 8,
      backgroundColor: Colors.black,
      image: Image.asset('assets/loading.gif'),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Wisata',
      //KITA SET THEME-NYA SECARA UMUM AGAR KETIKA MELAKUKAN PERUBAHAN, CUKUP PADA SETTING DIBAWAH AKAN MEMBERIKAN EFEK KE SEMUA PAGE YANG ADA
      theme: ThemeData(
          primaryColor: Colors.pinkAccent, //WARNA UTAMA KITA GUNAKAN pinkAccent
          accentColor: Colors.pink, //SECONDARY COLORNYA KITA SET KE PINK
          canvasColor: Color.fromRGBO(255, 254, 229, 1), //WARNA BACKGROUND CANVASNYA PAKAI RGBO DIMANA CODE DIATAS AKAN MENGHASILKAN WARNA KUNING

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


