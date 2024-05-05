class Donat {
  final String imagePath;
  final String nama;
  final double harga;
  final int rating;
  final String dsc;

  Donat({
    required this.imagePath,
    required this.nama,
    required this.harga,
    required this.rating,
    required this.dsc,
  });
}

List<Donat> donatItems = [
  Donat(
    imagePath: 'images/Black.png',
    nama: 'Black Jack',
    harga: 2.50,
    rating: 4,
    dsc: ('Donat Black Jack adalah donat cokelat lezat dengan lapisan glazur yang membuatnya begitu menggoda , Rasanya yang kaya akan '
      'cokelat dan kelembutan teksturnya membuatnya menjadi pilihan yang sempurna untuk dinikmati kapan saja.'
    ),
  ),
  Donat(
    imagePath: 'images/Caviar.png',
    nama: 'Caviar Chocolate',
    harga: 2.00,
    rating: 5,
    dsc: (
      'Donat Caviar Chocolate adalah paduan sempurna antara cokelat lezat dan taburan kaviar yang membuatnya begitu istimewa. Nikmati '
      'sensasi unik dari kombinasi cokelat yang lembut dan taburan kaviar yang memberikan rasa gurih yang menarik.'
    ),
  ),
  Donat(
    imagePath: 'images/Coco.png',
    nama: 'Coco Loco',
    harga: 2.75,
    rating: 3,
    dsc: (
      'Donat Coco Loco adalah donat dengan rasa kelapa yang segar dan aroma cokelat yang menggugah selera. Nikmati kombinasi yang'
      ' harmonis antara rasa kelapa yang menyegarkan dan cokelat yang kaya dalam setiap gigitannya.'
    ),
  ),
  Donat(
    imagePath: 'images/Copa.png',
    nama: 'Copa Banana',
    harga: 2.50,
    rating: 4,
    dsc: ( 
      'Donat Copa Banana adalah donat lembut dengan rasa pisang yang manis dan sempurna untuk dinikmati kapan saja. Setiap gigitan '
      'akan membawa Anda pada petualangan rasa yang memikat dengan kombinasi pisang yang manis dan tekstur donat yang lembut.'
    ),
  ),
  Donat(
    imagePath: 'images/Crunchy.png',
    nama: 'Crunchy Crunchy',
    harga: 2.00,
    rating: 5,
    dsc: ( 
      'Donat Crunchy Crunchy adalah donat renyah dengan taburan kacang yang membuatnya begitu memikat bagi pecinta kacang. Nikmati'
      'sensasi renyah yang disertai dengan cita rasa kacang yang khas dalam setiap gigitannya.'
    ),
  ),
  Donat(
    imagePath: 'images/Glazzy.png',
    nama: 'Glazzy',
    harga: 2.75,
    rating: 3,
    dsc: ( 
      'Donat Glazzy adalah donat dengan lapisan glazur yang kaya rasa dan tekstur yang begitu lembut di lidah. Rasakan manisnya '
      'lapisan glazur yang sempurna menutupi donat yang lembut, memberikan pengalaman manis yang tak terlupakan.'
    ),
  ),
  Donat(
    imagePath: 'images/Jacky.png',
    nama: 'Jacky Chunk',
    harga: 2.00,
    rating: 5,
    dsc: ( 
      'Donat Jacky Chunk adalah donat dengan potongan cokelat chunk yang melimpah, membuatnya begitu nikmat untuk dinikmati. '
      'Rasakan kelezatan cokelat dalam setiap gigitan dengan taburan chunk cokelat yang melimpah, memberikan pengalaman luar biasa bagi pencinta cokelat.'
    ),
  ),
  Donat(
    imagePath: 'images/Sugar.png',
    nama: 'Sugar Ice',
    harga: 2.75,
    rating: 3,
    dsc: ( 
      'Donat Sugar Ice adalah donat dengan lapisan gula yang memberikan sensasi manis yang tak tertandingi. Setiap gigitan akan membanjiri '
      'lidah Anda dengan manisnya lapisan gula yang memberikan pengalaman manis yang memuaskan.'
    ),
  ),
  Donat(
    imagePath: 'images/Chesse.png',
    nama: 'Chesse Cakelicious',
    harga: 2.85,
    rating: 4,
    dsc:( 
      'Donat Chesse Cakelicious adalah donat lembut dengan rasa keju yang melimpah, memberikan sensasi lezat yang tak tertandingi. Nikmati '
      'kelembutan tekstur donat yang dipadukan dengan cita rasa keju yang kaya dalam setiap gigitannya'
    ),
  ),
  Donat(
    imagePath: 'images/Avocado.png',
    nama: 'Avocado Dicaprio',
    harga: 2.85,
    rating: 4,
    dsc: ( 
      'Donat Avocado Dicaprio adalah donat segar dengan rasa alpukat yang khas, memberikan pengalaman unik yang menggugah selera. Rasakan '
      'segarnya rasa alpukat dalam setiap gigitan, memberikan sensasi yang menyegarkan dan nikmat untuk dinikmati.'
    ),
  ),
];
