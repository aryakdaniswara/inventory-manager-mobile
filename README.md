# inventory_manager_mobile
### Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter
- Stateless Widget: Widget ini tidak berubah atau statis, yaitu mereka tidak dapat berubah selama runtime aplikasi. Penampilan dan propertinya tetap tidak berubah sepanjang umur widget. Contoh dari widget stateless termasuk Icon, IconButton, dan Text.

- Stateful Widget: Widget ini dapat berubah propertinya selama runtime. Mereka dinamis, yaitu mereka dapat digambar beberapa kali dalam umur mereka. Widget ini dapat merespons perubahan data atau interaksi pengguna. Contoh dari widget stateful termasuk Checkbox, Radio Button, Slider, InkWell, Form, dan TextField.

### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing
Berikut adalah penjelasan sederhana tentang beberapa widget dalam pengembangan aplikasi Flutter:

1. **MyApp Widget**: Ini adalah widget utama aplikasi yang menginisialisasi MaterialApp, kontainer utama aplikasi. Widget ini juga memanggil MyHomePage untuk membangun tampilan utama aplikasi.

2. **MyHomePage Widget**: Ini adalah widget yang berfungsi sebagai halaman utama aplikasi. Widget ini mendefinisikan AppBar (seperti navigation bar pada aplikasi web) dan kerangka halaman. Widget ini juga menampilkan daftar objek ShopItem dalam bentuk grid cards.

3. **ShopCard Widget**: Widget ini digunakan untuk membuat card untuk setiap item dalam tampilan grid. Warna card didapatkan dari warna, ikon, dan teks dalam ShopItem. Widget ini juga membuat card dapat menampilkan snackbar dengan teks berdasarkan teks ShopItem.

4. **Scaffold Widget**: Widget ini berada di tingkat tertinggi dan memberikan struktur bagi semua widget lainnya pada halaman home.

5. **SingleChildScrollView Widget**: Widget ini memberikan fungsi scrolling jika isi halaman melebihi ukuran maksimum tampilan.

6. **InkWell Widget**: Widget ini menunjukkan area yang merespon sentuhan pengguna, membuat tampilan ketika card ditekan lebih menarik.

7. **SnackBar Widget**: Widget ini menampilkan teks di bagian bawah aplikasi ketika card disentuh oleh pengguna.

8. **Material Widget**: Widget ini digunakan untuk membuat struktur utama card ketika aplikasi dibangun.

9. **Column Widget**: Widget ini digunakan untuk memberikan tampilan kolom pada cards.

### Implementasi checklist 
- Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya. saya membuat repo baru dan menginisiasi git pada direktori lokal, Kemudian membuat proyek flutter dengan flutter create inventory_manager. Selanjutnya saya melakukan beberapa set up github dan mengecek fungsionalitas dasar dengan mencoba flutter run
  
- Dalam pengembangan aplikasi Flutter, saya membuat berkas baru bernama menu.dart dalam direktori main/lib. Beberapa kelas seperti MyHomePage dipindahkan ke menu.dart agar fokus pada pembuatan halaman utama. Kedua program Dart dikonfigurasi menjadi stateless karena widget stateful belum diperlukan.

Saya membuat tiga tombol sederhana dengan ikon dan teks untuk melihat daftar item, menambah item, dan logout. Kelas baru bernama ShopItem dibuat dalam MyHomePage untuk membentuk tombol-tombol tersebut. Kelas ini memiliki fields untuk teks, ikon, dan warna tombol. Warna tombol ditambahkan pada ShopItem, kali in saya menggunakan warna biru, hijau, dan merah

Kelas baru lainnya yang bersifat stateless, yaitu ShopCard, juga dibuat. Kelas ini memiliki class field dari kelas ShopItem dan menggunakan kelas Material sebagai dasar pembuatan tombol berupa card.

Kembali ke MyHomePage, saya membuat class field bernama items yang berisi struktur data List dengan objek-objek ShopItem. Dalam method build, GridView digunakan untuk menata setiap objek tombol pada list items.

Ketika tombol ditekan, SnackBar akan muncul dengan tulisan yang sesuai dengan tombol yang ditekan. Pada kelas ShopCard, child parameter dari object Material dibuat sebuah object InkWell yang memberikan animasi ketika tombol ditekan. Parameter onTap dari object InkWell mengatur apa yang terjadi bila tombol ditekan. Pada parameter tersebut, method dari kelas ScaffoldMessenger dipanggil untuk menyembunyikan SnackBar ketika tidak ditekan selama beberapa waktu dan menampilkan SnackBar. Pada method showSnackBar, dibuat object SnackBar yang diisikan dengan parameter content. Parameter ini merupakan tempat teks apa yang kita ingin tampilkan pada SnackBar. Untuk membedakan teks antar tombol, kelas ShopCard menginisasi field ShopItem yang dinamakan item untuk kemudian diambil nama dari setiap item yang akan ditampilkan pada SnackBar.

---

### Perbedaan antara Navigator.push() dan Navigator.pushReplacement()
- Navigator.push():
  - Penjelasan: Digunakan untuk menambahkan halaman baru ke tumpukan navigasi.
  - Contoh Penggunaan:
    ```
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewPage()),
    );
    ```
- Navigator.pushReplacement():
  - Penjelasan: Digunakan untuk menggantikan halaman saat ini dengan halaman baru pada tumpukan navigasi.
  - Contoh Penggunaan:
    ```
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => NewPage()),
    );
    ```
### Layout Widgets pada Flutter
- Drawer:
  - Penjelasan: Digunakan untuk menampilkan menu navigasi samping (drawer) pada aplikasi.
  - Contoh Penggunaan: Menyediakan akses cepat ke berbagai fitur atau halaman dalam aplikasi.
  - Konteks Penggunaan: Digunakan untuk menyimpan opsi navigasi dan akses cepat.

- DrawerHeader:
  - Penjelasan: Bagian atas drawer yang menyediakan ruang untuk judul atau elemen kustom.
  - Contoh Penggunaan: Menyajikan informasi penting atau merek aplikasi.
  - Konteks Penggunaan: Biasanya digunakan untuk menampilkan nama aplikasi dan slogan.

- ListTile:
  - Penjelasan: Widget yang mengandung satu baris teks atau elemen lainnya yang dapat diklik.
  - Contoh Penggunaan: Merepresentasikan opsi atau item dalam menu.
  - Konteks Penggunaan: Menavigasi ke halaman atau menjalankan aksi terkait saat diklik.

- Icon:
  - Penjelasan: Widget yang menampilkan ikon berbasis ikon Material Design.
  - Contoh Penggunaan: Memberikan ikon visual yang merepresentasikan fungsi atau kategori.
  - Konteks Penggunaan: Digunakan dalam ListTile untuk menambahkan ikon pada setiap opsi menu.

- Padding:
  - Penjelasan: Menambahkan padding (ruang putih) di sekitar widget tertentu.
  - Contoh Penggunaan:
Memberikan jarak atau ruang putih antara elemen-elemen.
  - Konteks Penggunaan:
Digunakan untuk meningkatkan estetika dan kejelasan tata letak.

- Text:
  - Penjelasan: Menampilkan teks.
  - Contoh Penggunaan:
Menyajikan teks informatif atau deskriptif.
  - Konteks Penggunaan:
Digunakan untuk menampilkan judul, slogan, atau teks informatif dalam drawer.

- Container:
  - Penjelasan: Digunakan untuk mengelompokkan dan mengatur widget lain dalam suatu wadah.
  - Contoh Penggunaan:
Menyusun widget-widget dengan padding, margin, dan dekorasi tertentu.
  - Konteks Penggunaan:
Memuat widget-widget dengan penataan dan dekorasi spesifik.

- Column:
  - Penjelasan: Mengatur widget dalam kolom vertikal.
  - Contoh Penggunaan:
Menata widget-widget secara vertikal di dalam satu kolom.
  - Konteks Penggunaan:
Digunakan untuk menyusun widget secara vertikal, seperti daftar atau formulir.

- Row:
  - Penjelasan: Mengatur widget dalam baris horizontal.
  - Contoh Penggunaan:
Menyusun widget-widget secara horizontal di dalam satu baris.
  - Konteks Penggunaan:
Berguna untuk menyusun widget secara horizontal, misalnya, tombol atau ikon.

- ListView:
  - Penjelasan: Mengatur widget dalam daftar bergulir.
  - Contoh Penggunaan:
Menampilkan daftar item dengan banyak data.
  - Konteks Penggunaan:
Cocok untuk menampilkan daftar data yang memerlukan pengguliran, seperti daftar kontak atau pesan.

### Elemen Input pada Formulir dan Alasan Penggunaannya:

- TextFormField:
  - Penjelasan: Digunakan untuk mendapatkan input teks dari pengguna.
  - Alasan Penggunaan: Cocok untuk input teks seperti nama, deskripsi, dan sebagainya.

- ElevatedButton:
  - Penjelasan: Digunakan untuk menambahkan tombol di atas permukaan material.
  - Alasan Penggunaan: Ideal untuk tombol Save pada formulir.

### Penerapan Clean Architecture pada Aplikasi Flutter:

Penerapan Clean Architecture pada aplikasi Flutter melibatkan pemisahan logika aplikasi ke dalam beberapa lapisan. Setiap lapisan memiliki tanggung jawabnya sendiri, dan hubungan antara lapisan-lapisan tersebut didesain agar ketergantungan antar-lapisan minimal. Ini memudahkan pengujian, pemeliharaan, dan pengembangan lebih lanjut. Berikut adalah penjelasan lebih rinci mengenai masing-masing lapisan pada Clean Architecture:

1. **Domain Layer**:
  - Deskripsi:
Merupakan inti dari aplikasi yang berisi aturan bisnis dan entitas.
Tidak bergantung pada infrastruktur atau framework tertentu.
Berfokus pada representasi bisnis dan operasi yang terkait.
  - Komponen:
Entities: Mendefinisikan entitas atau objek bisnis yang mewakili objek dunia nyata.
Use Cases (Interactors): Mendefinisikan aturan bisnis dan interaksi antara entitas.
  - Contoh:
Jika aplikasi manajemen inventaris, entitasnya mungkin termasuk Item dan Shop.
Use case dapat berupa menambahkan item ke dalam inventaris atau menghitung total nilai inventaris.
2. **Data Layer**: 
  - Deskripsi: 
Menangani akses ke data, seperti penyimpanan lokal, API, atau database.
Tidak bergantung pada presentasi atau bisnis logic.
Mengimplementasikan antarmuka atau kontrak yang didefinisikan oleh Domain Layer.
  - Komponen:  
Repositories: Menyediakan metode untuk mengambil dan menyimpan data.
Data Sources: Mengimplementasikan cara konkret untuk mendapatkan data (API, database, dll.).
  - Contoh:
Repository dapat memiliki metode untuk mendapatkan item dari database atau menyimpan item ke server.
3. ***Presentation Layer**:
  - Deskripsi:
Menangani presentasi dan UI.
Dapat berupa aplikasi Flutter, web, atau platform UI lainnya.
Tidak mengandung bisnis logic secara langsung.
  - Komponen:
UI Components: Menangani tampilan dan antarmuka pengguna.
Presenters atau ViewModels: Menyediakan model presentasi untuk tampilan.
  - Contoh:
Tampilan Flutter yang menampilkan daftar item dan formulir tambah item.
ViewModel yang mengelola state dan logika presentasi.

- Hubungan Antar Lapisan:
  - Domain Layer → Data Layer: <br>
Domain layer tidak tahu dari mana atau bagaimana data diambil atau disimpan. Ia hanya mendefinisikan kontrak (interface) untuk diimplementasikan oleh Data Layer.
  - Data Layer → Domain Layer:  <br>
Data Layer mengimplementasikan kontrak dari Domain Layer dan menyediakan data yang dibutuhkan oleh aplikasi.
  - Presentation Layer → Domain Layer:  <br>
Presentation Layer bergantung pada Domain Layer untuk aturan bisnis dan entitasnya.


### Implementasi Checklist:
- Menambah Halaman Baru:
  - Menggunakan Navigator.push() untuk menambahkan halaman formulir tambah item baru.
- Validasi Input pada Formulir:
  - Menggunakan TextFormField untuk setiap elemen input.
  - Menambahkan validasi agar tidak boleh kosong.
- Navigasi ke Halaman Formulir Baru:
  - Menambahkan tombol "Tambah Item" pada halaman utama dengan Navigator.push().
- Popup Setelah Menekan Tombol Save:
  - Menggunakan showDialog untuk menampilkan data yang diisi pada formulir.
- Membuat Drawer:
  - Menambahkan Drawer dengan dua opsi: "Halaman Utama" dan "Tambah Item".
- Menambah Halaman Lihat Produk (Bonus):
  - Membuat list untuk penyimpanan
  - Implementasi penyimpanan data pada form
  - Membuat halaman baru untuk menampilkan daftar item yang sudah dibuat.
  - Menambah tombol "Lihat Produk" pada halaman utama atau drawer untuk mengarahkan pengguna ke halaman tersebut.
  - Menambahkan ke drawer
- Mengarahkan pengguna ke halaman tersebut jika menekan tombol Lihat Item pada halaman utama atau drawer
  - Menggunakan  Navigator.push untuk navigasi pengguna jika tombol yang ditekan Lihat Item
