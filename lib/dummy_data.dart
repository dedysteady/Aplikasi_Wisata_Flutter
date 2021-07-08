import './models/category.dart';
import './models/places.dart';
const CATEGORIES_DUMMY_DATA = const [
  
  Category(
    id: 'P1',
    title: 'Pantai',
    description: '',
    image: 'https://e7.pngegg.com/pngimages/413/352/png-clipart-palmier-sticker-paper-beach-palm-tree-leaf-logo.png',
  ),
  Category(
    id: 'P2',
    title: 'Gunung',
    description: '',
    image: 'https://cdn.pixabay.com/photo/2018/05/21/22/44/logo-3419889_960_720.png',
  ),
  Category(
    id: 'P3',
    title: 'Budaya',
    description: '',
    image: 'https://w7.pngwing.com/pngs/509/718/png-transparent-orange-mask-culture-of-indonesia-provinces-of-indonesia-wayang-others-miscellaneous-culture-painting.png',
  ),
  Category(
    id: 'P4',
    title: 'Kuliner',
    description: '',
    image: 'https://www.madanitv.net/wp-content/uploads/2014/01/Kuliner.png',
  ),
  Category(
    id: 'P5',
    title: 'Religi',
    description: '',
    image: 'https://1.bp.blogspot.com/-rN_F_F8pOnI/X5-5mucaH5I/AAAAAAAADGI/rMXRpkVEljsfLN8SgCgnCFm4PWOEKfq-QCLcBGAsYHQ/s1141/agama-di-indonesia.PNG',
  ),
  Category(
    id: 'P6',
    title: 'Edukasi',
    description: '',
    image: 'https://w7.pngwing.com/pngs/465/305/png-transparent-my-liberty-preschool-mksr-english-learning-school-english-class-logo.png',
  ),
  
];

const PLACES_DUMMY_DATA = const [
  Places(
    id: 'A1',
    name: 'Pantai Bira Bulukumba',
    description: 'Tanjung bira terletak di daerah Sulawesi Selatan. Lokasi khususnya adalah Kabupaten Bulukumba yang jaraknya sangat jauh, sekitar 200 km dari pusat ibukota Makassar. Sehingga tanjung bira bisa diaktakan terletak di ujung selatan daratan sulawesi selatan. Tanjung bira memang bisa dikatakan senjata oleh masyarakat sekitar untuk menarik masyarakat luar dan wisatawan baik lokal maupun asing untuk datang ke sana. Tanjung bira tentu saja menawarkan hal seperti pantai putih, alam bawah laut dan juga pemandangan senja yang tidak ada duanya.',
    author: 'Nuge',
    category: 'P1',
    image: "https://www.alorinatours.co.id/wp-content/uploads/2018/07/Pulau-Liukang.jpg",
    price: 50000
  ),
  Places(
    id: 'A2',
    name: 'Pantai Bara Bulukumba',
    description: 'Soal indah, Pantai Bara dan Pantai Bira ibarat saudara kembar. Selain namanya yang mirip, letaknya sama-sama di Bulukumba, Sulsel. Pantai pasir putih nan lembut dan laut biru ada di sini. Pantai Bara memang belum setenar Tanjung Bira. Meski demikian, pemandangan di sini tak kalah menarik. Hamparan pasir putih dipadukan dengan tenangnya laut dari arah Flores, membuat kita betah berlama-lama di Pantai Bara.',
    author: 'Riski',
    category: 'P1',
    image: "https://media.travelingyuk.com/wp-content/uploads/2019/05/Pantai-Bara-di-Bulukumba.jpg",
    price: 20000
  ),

  Places(
    id: 'A3',
    name: 'Ke\'te Kesu Toraja',
    description: 'Di sini kamu dapat menemukan banyak rumah tongkonan yang telah berdiri semenjak zaman leluhur. Di atas bagian pintu masuk kamu dapat menemukan kepala kerbau yang ditempelkan di dinding. Dalam budaya masyarakat Toraja, hal tersebut memiliki arti kemakmuran, kejayaan, dan status sosial.',
    author: 'Riski',
    category: 'P3',
    image: "https://media-cdn.tripadvisor.com/media/photo-s/11/2b/23/63/torajan-typical-house.jpg",
    price: 15000
  ),

  Places(
    id: 'A4',
    name: 'Ammatoa Kajang Bulukumba',
    description: 'Suku Kajang Ammatoa terletak di kabupaten Bulukumba, Kecamatan Kajang, Sulawesi Selatan. Desa ini dinamakan Tana Toa yang merupakan tanah yang tertua di dunia dikarenakan kepercayaan masyarakat adatnya. Secara geografis, luas wilayah Desa Kajang Ammatoa sekitar 331,17 ha dan memiliki kondisi hutan yang sangat lebat. Hampir seluruh dusun yang berada di dalamnya di kelilingi hutan dan tidak ada jalan beraspal di dalam kawasan ini.',
    author: 'Nuge',
    category: 'P3',
    image: "https://sulawesi.garudacitizen.com/wp-content/uploads/2019/12/IMG-20191201-WA0030-1024x577.jpg",
    price: 24000
  ),
     Places(
    id: 'A1',
    name: 'Taman Pintar, Yogyakarta',
    description: 'Objek wisata edukasi di Indonesia satu ini dibagi menjadi beberapa zona dan wahana. Masing-masing wahana memiliki tema khusus seperti zona otomotif, zona replika, zona pengolahan minyak dan bumi dan lain sebagainya. Meski menyediakan banyak wahana, tarif masuk ke Taman Pintar sangat terjangkau..',
    author: 'Nuge',
    category: 'P6',
    image: "https://www.pegipegi.com/travel/wp-content/uploads/2018/05/taman-pintar3.jpg",
    price: 50000
  ),
  Places(
    id: 'A2',
    name: 'Masjid Raya Baiturrahman',
    description: 'Destinasi wisata religi di Indonesia yang pertama adalah Masjid Baiturrahman yang telah  dibangun sejak era Kesultanan Aceh. Masjid ini juga sempat hancur akibat serangan Belanda, sebelum kemudian dibangun kembali pada 1879 - 1881 dengan arsitektur bergaya Moghul (India).',
    author: 'Riski',
    category: 'P5',
    image: "http://arsitektur-indonesia.com/wp-content/uploads/2016/03/big_slider_halaman_depan_masjid_baiturrahman.png",
    price: 20000
  ),

  Places(
    id: 'A3',
    name: 'Soto Tangkar Pak Kus',
    description: 'Menjelang malam suhu kota Bekasi menjadi semakin tinggi, belum lagi saat gerimis mengguyur. Anda membutuhkan kuliner hangat untuk sekedar menghalau dingin yang menembus kulit. Semangkuk Soto Tangkar Pak Kus bisa menjadi pilihan terbaik, untuk disantap sebagai penghangat badan. Anda akan merasakan kuah santan yang gurih dengan potongan daging, dan potongan tomat membuat kuah soto tampak segar',
    author: 'Riski',
    category: 'P4',
    image: "https://asset.kompas.com/crops/hgYCTwrFpAN5wQ35-Z2STU9C0vQ=/3x0:700x465/750x500/data/photo/2020/11/08/5fa7d069849e2.jpg",
    price: 15000
  ),

  Places(
    id: 'A4',
    name: 'Gunug Salak',
    description: 'Gunung Salak merupakan gunung api strato tipe A. Puncak tertinggi (Puncak Salak I) menurut Hartmann (1938) adalah puncak berusia tertua. Puncak Salak II berketinggian 2.180 m dpl. dianggap yang tertua kedua. Selanjutnya muncul Puncak Sumbul dengan ketinggian 1.926 m dpl.',
    author: 'Nuge',
    category: 'P2',
    image: "https://photo.jpnn.com/arsip/watermark/2018/11/27/ilustrasi-gunung-salak-foto-radar-bogor.jpg",
    price: 24000
  ),
];