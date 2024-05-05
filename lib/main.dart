import 'package:flutter/material.dart';
import 'list_data.dart';

void main() {
  runApp(const MyApp());
}

//class ini class utama yang digunakan untuk mengatur rute class mana yang akan dijalankan dulu
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //widget ini digunakan untk menyediakan konfigurasi untuk membuat widget berbasis material desain
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {"HomePage": (context) => const HomePage()},
      home: const Welcome(),
    );
  }
}

//class ini digunakan pada awal tampilan selamat datang saat alikasi dijalankan 
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    //widget ini digunakan untuk membuat membuat tata letak dasar dari halaman awal yang berisi
    //halamann utama
    return Scaffold(
      backgroundColor: Colors.white,
      //widget center ini digunakan untuk menempatkan konten yang berada didalam body ditengah
      body: Center(
        //widget column ini berisi untuk menampung ucapan selaat datang , logo aplikasi , dan
        //tombol lanjut yang diarahkan ke halaman home .
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //widget text digunakan untuk mmenampilkan teks yang bisa ditampilkan dalam berbagai format
            // yang bisa diatur melalui textStyle
            const Text(
              "Selamat datang ditoko kami",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 34, 10),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            //widget sazebox ini digunakan untuk memberikan jarak antar widget sebelumnya dan sesudahnya
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.5, // Menyesuaikan tinggi gambar sesuai layar
              child: Image.asset(
                "images/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            //widdget ini digunakan untuk membuat tombol lanjut ke halaman home yang tombol nya bentukya diatur didalamnya
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: const Color.fromARGB(255, 0, 34, 10),
              ),
              child: Text(
                "Lanjut",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//class ini digunakan untuk halaman home yang berisi untuk memanggil dan menampilkan list-list donat 
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //widget scaffold
    return Scaffold(
      //widget appbar yang digunakan  untuk membuat  bar pada halaman home yang berisi title text"donat kita " dan icon keranjang / cart
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43, 122, 67),
        automaticallyImplyLeading: false,
        //widget row
        title: Row(children: [
          Text(
            'Donat Kita',
            style: TextStyle(color: Colors.white),
          ),
        ]),
        //action digunaan untuk menampilkan icon keranjang , dan memberikan aksi ketika diklik nanti bisa diarahkan halaman selanjutnya
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            //widget container
            child: Container(
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      //widget listview yang digunakan untuk menampilkan list donat yang nanti layoutnya udah diatur didalam clas DonutListItem
      body: ListView.builder(
        itemCount: donatItems.length,
        itemBuilder: (context, index) {
          final donat = donatItems[index];
          return DonutListItem(donatItem: donat);
        },
      ),
    );
  }
}

//class ini digunakan untuk membuat bentuk list-list yang akan ditampilkan pada halaman home
class DonutListItem extends StatelessWidget {
  const DonutListItem({Key? key, required this.donatItem}) : super(key: key);

  final Donat donatItem;

  @override
  Widget build(BuildContext context) {
    //widget container untuk tempat atau membungkus column dan row tang nanti didalamnya berisi gambar , nama , harga , rating produk
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      //untuk membuat dekorasi seperti bentuk dan tampilan container nya
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DonutDescriptionPage(donatItem: donatItem)));
        },
        //widget row untuk membuat kolom .
        child: Row(
          children: [
            //widget container untuk membungkus atau mengatur ukuran gambar yang diambil dari file list_data.dart
            Container(
              width: 90,
              height: 90,
              //widget decoration untuk merubah bentuk dari container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(donatItem.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            //widget expended digunakan untuk memperluas widget row , column, agar memenuhi sebanyak mungkin ruang yang tersedia dalam arah utama (main axis) dari widget induknya
            Expanded(
              //widget column untuk membuat baris untuk menempatkan nama , harga disebelah gambar
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    donatItem.nama,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$${donatItem.harga.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  //widget row
                  Row(
                    children: List.generate(
                      donatItem.rating,
                      (index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//class ini digunakan untuk mmenampilkan halaman yang berupa deskripsi 
class DonutDescriptionPage extends StatefulWidget {
  const DonutDescriptionPage({Key? key, required this.donatItem})
      : super(key: key);

  final Donat donatItem;

  @override
  _DonutDescriptionPageState createState() => _DonutDescriptionPageState();
}

class _DonutDescriptionPageState extends State<DonutDescriptionPage> {
  int quantity = 1;

  double get totalharga => widget.donatItem.harga * quantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //widget appbar yang digunakan  untuk membuat  bar pada halaman home yang berisi title text"donat kita " dan tombol back ke home
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43, 122, 67),
        centerTitle: true,
        title: Text(
          widget.donatItem.nama,
          style: TextStyle(color: Colors.white),
        ),
      ),
      //widget padding untuk memberikan jarak dari lebar layar perangkat agar tidak terlalu mepet dengan ukuran layar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //widget SingleChildScrollView digunakan untuk membuat halaman agar halaman bisa discrol karena konten atau list tidak bisa langsun ditampilin semua dalam 1 halaman
        child: SingleChildScrollView(
          //widget colum
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //widget centeragar yang didalam colum rata tengah
              Center(
                child: Image.asset(
                  widget.donatItem.imagePath,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.6,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                //widget container untuk membungkur teks haga
                child: Container(
                  //widget decoretion untuk membuat border pada container
                  decoration: const BoxDecoration(
                    border: Border(
                        top: (BorderSide(color: Colors.black, width: 1)),
                        bottom: (BorderSide(color: Colors.black, width: 1)),
                        right: (BorderSide(color: Colors.black, width: 1)),
                        left: (BorderSide(color: Colors.black, width: 1))),
                  ),
                  //widget padding untuk memberikan ruang kosong di sekeliling widget anaknya
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Harga: ${widget.donatItem.harga}',
                        style: const TextStyle(fontSize: 18)),
                  ),
                ),
              ),
              //widget tesk untuk menampilkan tulisan deskripsi
              const Text('Deskripsi:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              //untuk mengatur posisi dan format teksnya menjadi rata kana kiri dan untukan font 15
              Text(
                widget.donatItem.dsc,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 30),
              //widget column untuk menampung row dan expanded yang berisi tampilan total harga , tombol mengatur jumlah
              // donat yang akan dibeli dan tombol beli
              Column(
                children: [
                  //widget row
                  Row(
                    children: [
                      //widget expanded
                      Expanded(
                        child: Text(
                          'Total Harga: \$${totalharga.toStringAsFixed(2)}',
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      //widget expanded
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            //widget textButtton digunakan untuk membuat tombol kurang yang didalam nya ada seleksi untuk mengurangi jumlah 
                            TextButton(
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                              //widget Icon digunakan untuk menampilan icon kurang yang iconnya sudah ada dalam flutter
                              child: const Icon(Icons.remove),
                            ),
                            //widget sizeBox untuk memberi jarak atau lebar 100
                            const SizedBox(width: 10),
                            //widget text
                            Text(
                              '$quantity',
                              style: const TextStyle(fontSize: 15),
                            ),
                            const SizedBox(width: 10),
                            //widget textButtton digunakan untuk membuat tombol tambah yang didalam nya ada seleksi untuk menambah jumlah
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              //widget Icon digunakan untuk menampilan icon dalam flutter
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //widget row dibawah ini digunakan untuk memposisikan tombol beli
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //widget textButton untuk membuat tombol ketika ingin membeli produk 
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Beli',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
