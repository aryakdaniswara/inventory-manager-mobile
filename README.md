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
