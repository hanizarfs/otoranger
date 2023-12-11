// // // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // // class AddPage extends StatefulWidget {
// // // //   @override
// // // //   _AddPageState createState() => _AddPageState();
// // // // }

// // // // class _AddPageState extends State<AddPage> {
// // // //   final TextEditingController namaBengkelController = TextEditingController();
// // // //   final TextEditingController alamatController = TextEditingController();
// // // //   final TextEditingController noHpController = TextEditingController();
// // // //   TimeOfDay? selectedOpeningTime;
// // // //   TimeOfDay? selectedClosingTime;

// // // //   // Tambahkan fungsi async untuk mengelola operasi asinkron
// // // //   Future<void> _simpanData() async {
// // // //     try {
// // // //       await FirebaseFirestore.instance.collection('workshop').add({
// // // //         'name': namaBengkelController.text,
// // // //         'address': alamatController.text,
// // // //         'phone_number': noHpController.text,
// // // //         'opening_time': selectedOpeningTime?.format(context) ?? '',
// // // //         'closing_time': selectedClosingTime?.format(context) ?? '',
// // // //         // Anda mungkin juga ingin menambahkan field untuk owner UUID
// // // //         // 'owner': ownerUUID,
// // // //       });

// // // //       // Setelah menyimpan, kembali ke halaman sebelumnya
// // // //       Navigator.pop(context);
// // // //     } catch (error) {
// // // //       // Handle error jika ada
// // // //       print("Error: $error");
// // // //       // Anda mungkin ingin menampilkan pesan kesalahan kepada pengguna
// // // //     }
// // // //   }

// // // //   Future<void> _selectOpeningTime(BuildContext context) async {
// // // //     final TimeOfDay? picked = await showTimePicker(
// // // //       context: context,
// // // //       initialTime: TimeOfDay.now(),
// // // //     );

// // // //     if (picked != null && picked != selectedOpeningTime) {
// // // //       setState(() {
// // // //         selectedOpeningTime = picked;
// // // //       });
// // // //     }
// // // //   }

// // // //   Future<void> _selectClosingTime(BuildContext context) async {
// // // //     final TimeOfDay? picked = await showTimePicker(
// // // //       context: context,
// // // //       initialTime: TimeOfDay.now(),
// // // //     );

// // // //     if (picked != null && picked != selectedClosingTime) {
// // // //       setState(() {
// // // //         selectedClosingTime = picked;
// // // //       });
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Tambah Bengkel'),
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             TextFormField(
// // // //               controller: namaBengkelController,
// // // //               decoration: InputDecoration(labelText: 'Nama Bengkel'),
// // // //             ),
// // // //             TextFormField(
// // // //               controller: alamatController,
// // // //               decoration: InputDecoration(labelText: 'Alamat'),
// // // //             ),
// // // //             TextFormField(
// // // //               controller: noHpController,
// // // //               decoration: InputDecoration(labelText: 'No. HP'),
// // // //             ),
// // // //             InkWell(
// // // //               onTap: () => _selectOpeningTime(context),
// // // //               child: InputDecorator(
// // // //                 decoration: InputDecoration(
// // // //                   labelText: 'Jam Buka',
// // // //                 ),
// // // //                 child: Text(
// // // //                   selectedOpeningTime?.format(context) ?? 'Pilih Jam',
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             InkWell(
// // // //               onTap: () => _selectClosingTime(context),
// // // //               child: InputDecorator(
// // // //                 decoration: InputDecoration(
// // // //                   labelText: 'Jam Tutup',
// // // //                 ),
// // // //                 child: Text(
// // // //                   selectedClosingTime?.format(context) ?? 'Pilih Jam',
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             ElevatedButton(
// // // //               onPressed: () {
// // // //                 // Panggil fungsi _simpanData() secara asinkron
// // // //                 _simpanData();
// // // //               },
// // // //               child: Text('Simpan'),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // class AddPage extends StatefulWidget {

// // //   @override
// // //   _AddPageState createState() => _AddPageState();
// // // }

// // // class _AddPageState extends State<AddPage> {
// // //   final TextEditingController namaBengkelController = TextEditingController();
// // //   final TextEditingController alamatController = TextEditingController();
// // //   final TextEditingController noHpController = TextEditingController();
// // //   TimeOfDay? selectedOpeningTime;
// // //   TimeOfDay? selectedClosingTime;

// // //   String ownerUUID tolong ambil datanya dari yang sedang login!

// // //   // Tambahkan fungsi async untuk mengelola operasi asinkron
// // //   Future<void> _simpanData() async {
// // //     try {
// // //       await FirebaseFirestore.instance.collection('workshop').add({
// // //         'name': namaBengkelController.text,
// // //         'address': alamatController.text,
// // //         'phone_number': noHpController.text,
// // //         'opening_time': selectedOpeningTime?.format(context) ?? '',
// // //         'closing_time': selectedClosingTime?.format(context) ?? '',
// // //         'owner': ownerUUID,
// // //       });

// // //       // Setelah menyimpan, kembali ke halaman sebelumnya
// // //       Navigator.pop(context);
// // //     } catch (error) {
// // //       // Handle error jika ada
// // //       print("Error: $error");
// // //       // Anda mungkin ingin menampilkan pesan kesalahan kepada pengguna
// // //     }
// // //   }

// // //   Future<void> _selectOpeningTime(BuildContext context) async {
// // //     final TimeOfDay? picked = await showTimePicker(
// // //       context: context,
// // //       initialTime: TimeOfDay.now(),
// // //     );

// // //     if (picked != null && picked != selectedOpeningTime) {
// // //       setState(() {
// // //         selectedOpeningTime = picked;
// // //       });
// // //     }
// // //   }

// // //   Future<void> _selectClosingTime(BuildContext context) async {
// // //     final TimeOfDay? picked = await showTimePicker(
// // //       context: context,
// // //       initialTime: TimeOfDay.now(),
// // //     );

// // //     if (picked != null && picked != selectedClosingTime) {
// // //       setState(() {
// // //         selectedClosingTime = picked;
// // //       });
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Tambah Bengkel'),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             TextFormField(
// // //               controller: namaBengkelController,
// // //               decoration: InputDecoration(labelText: 'Nama Bengkel'),
// // //             ),
// // //             TextFormField(
// // //               controller: alamatController,
// // //               decoration: InputDecoration(labelText: 'Alamat'),
// // //             ),
// // //             TextFormField(
// // //               controller: noHpController,
// // //               decoration: InputDecoration(labelText: 'No. HP'),
// // //             ),
// // //             InputDecorator(
// // //               decoration: InputDecoration(labelText: 'Owner'),
// // //               child: Text(
// // //                 ownerUUID,
// // //                 style: TextStyle(color: Colors.black),
// // //               ),
// // //             ),
// // //             InkWell(
// // //               onTap: () => _selectOpeningTime(context),
// // //               child: InputDecorator(
// // //                 decoration: InputDecoration(
// // //                   labelText: 'Jam Buka',
// // //                 ),
// // //                 child: Text(
// // //                   selectedOpeningTime?.format(context) ?? 'Pilih Jam',
// // //                 ),
// // //               ),
// // //             ),
// // //             InkWell(
// // //               onTap: () => _selectClosingTime(context),
// // //               child: InputDecorator(
// // //                 decoration: InputDecoration(
// // //                   labelText: 'Jam Tutup',
// // //                 ),
// // //                 child: Text(
// // //                   selectedClosingTime?.format(context) ?? 'Pilih Jam',
// // //                 ),
// // //               ),
// // //             ),
// // //             ElevatedButton(
// // //               onPressed: () {
// // //                 // Panggil fungsi _simpanData() secara asinkron
// // //                 _simpanData();
// // //               },
// // //               child: Text('Simpan'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';

// // class AddPage extends StatefulWidget {
// //   @override
// //   _AddPageState createState() => _AddPageState();
// // }

// // class _AddPageState extends State<AddPage> {
// //   final TextEditingController namaBengkelController = TextEditingController();
// //   final TextEditingController alamatController = TextEditingController();
// //   final TextEditingController noHpController = TextEditingController();
// //   TimeOfDay? selectedOpeningTime;
// //   TimeOfDay? selectedClosingTime;

// //   late String ownerUUID; // Ubah ke tipe data late

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Panggil fungsi untuk mengambil UUID owner dari FirebaseAuth
// //     _getOwnerUUID();
// //   }

// //   // Fungsi untuk mengambil UUID owner dari FirebaseAuth
// //   Future<void> _getOwnerUUID() async {
// //     try {
// //       User? user = FirebaseAuth.instance.currentUser;
// //       if (user != null) {
// //         setState(() {
// //           ownerUUID = user.uid;
// //         });
// //       } else {
// //         // Handle jika user tidak ditemukan
// //       }
// //     } catch (error) {
// //       // Handle error jika terjadi kesalahan
// //       print("Error: $error");
// //     }
// //   }

// //   // Fungsi async untuk mengelola operasi asinkron
// //   Future<void> _simpanData() async {
// //     try {
// //       await FirebaseFirestore.instance.collection('workshop').add({
// //         'name': namaBengkelController.text,
// //         'address': alamatController.text,
// //         'phone_number': noHpController.text,
// //         'opening_time': selectedOpeningTime?.format(context) ?? '',
// //         'closing_time': selectedClosingTime?.format(context) ?? '',
// //         'owner': ownerUUID,
// //       });

// //       // Setelah menyimpan, kembali ke halaman sebelumnya
// //       Navigator.pop(context);
// //     } catch (error) {
// //       // Handle error jika ada
// //       print("Error: $error");
// //       // Anda mungkin ingin menampilkan pesan kesalahan kepada pengguna
// //     }
// //   }

// //   Future<void> _selectOpeningTime(BuildContext context) async {
// //     final TimeOfDay? picked = await showTimePicker(
// //       context: context,
// //       initialTime: TimeOfDay.now(),
// //     );

// //     if (picked != null && picked != selectedOpeningTime) {
// //       setState(() {
// //         selectedOpeningTime = picked;
// //       });
// //     }
// //   }

// //   Future<void> _selectClosingTime(BuildContext context) async {
// //     final TimeOfDay? picked = await showTimePicker(
// //       context: context,
// //       initialTime: TimeOfDay.now(),
// //     );

// //     if (picked != null && picked != selectedClosingTime) {
// //       setState(() {
// //         selectedClosingTime = picked;
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Tambah Bengkel'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             TextFormField(
// //               controller: namaBengkelController,
// //               decoration: InputDecoration(labelText: 'Nama Bengkel'),
// //             ),
// //             TextFormField(
// //               controller: alamatController,
// //               decoration: InputDecoration(labelText: 'Alamat'),
// //             ),
// //             TextFormField(
// //               controller: noHpController,
// //               decoration: InputDecoration(labelText: 'No. HP'),
// //             ),
// //             InputDecorator(
// //               decoration: InputDecoration(labelText: 'Owner'),
// //               child: Text(
// //                 ownerUUID,
// //                 style: TextStyle(color: Colors.black),
// //               ),
// //             ),
// //             InkWell(
// //               onTap: () => _selectOpeningTime(context),
// //               child: InputDecorator(
// //                 decoration: InputDecoration(
// //                   labelText: 'Jam Buka',
// //                 ),
// //                 child: Text(
// //                   selectedOpeningTime?.format(context) ?? 'Pilih Jam',
// //                 ),
// //               ),
// //             ),
// //             InkWell(
// //               onTap: () => _selectClosingTime(context),
// //               child: InputDecorator(
// //                 decoration: InputDecoration(
// //                   labelText: 'Jam Tutup',
// //                 ),
// //                 child: Text(
// //                   selectedClosingTime?.format(context) ?? 'Pilih Jam',
// //                 ),
// //               ),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Panggil fungsi _simpanData() secara asinkron
// //                 _simpanData();
// //               },
// //               child: Text('Simpan'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';

// // class AddPage extends StatefulWidget {
// //   @override
// //   _AddPageState createState() => _AddPageState();
// // }

// // class _AddPageState extends State<AddPage> {
// //   final TextEditingController namaBengkelController = TextEditingController();
// //   final TextEditingController alamatController = TextEditingController();
// //   final TextEditingController noHpController = TextEditingController();
// //   TimeOfDay? selectedOpeningTime;
// //   TimeOfDay? selectedClosingTime;
// //   late String ownerUUID;

// //   List<String> layananList = ['Servis Berat']; // Daftar layanan default

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Panggil fungsi untuk mengambil UUID owner dari FirebaseAuth
// //     _getOwnerUUID();
// //   }

// //   // Fungsi untuk mengambil UUID owner dari FirebaseAuth
// //   Future<void> _getOwnerUUID() async {
// //     try {
// //       User? user = FirebaseAuth.instance.currentUser;
// //       if (user != null) {
// //         setState(() {
// //           ownerUUID = user.uid;
// //         });
// //       } else {
// //         // Handle jika user tidak ditemukan
// //       }
// //     } catch (error) {
// //       // Handle error jika terjadi kesalahan
// //       print("Error: $error");
// //     }
// //   }

// //   // Fungsi async untuk mengelola operasi asinkron
// //   Future<void> _simpanData() async {
// //     try {
// //       await FirebaseFirestore.instance.collection('workshop').add({
// //         'name': namaBengkelController.text,
// //         'address': alamatController.text,
// //         'phone_number': noHpController.text,
// //         'opening_time': selectedOpeningTime?.format(context) ?? '',
// //         'closing_time': selectedClosingTime?.format(context) ?? '',
// //         'owner': ownerUUID,
// //         'layanan': layananList,
// //       });

// //       // Setelah menyimpan, kembali ke halaman sebelumnya
// //       Navigator.pop(context);
// //     } catch (error) {
// //       // Handle error jika ada
// //       print("Error: $error");
// //       // Anda mungkin ingin menampilkan pesan kesalahan kepada pengguna
// //     }
// //   }

// //   Future<void> _selectOpeningTime(BuildContext context) async {
// //     final TimeOfDay? picked = await showTimePicker(
// //       context: context,
// //       initialTime: TimeOfDay.now(),
// //     );

// //     if (picked != null && picked != selectedOpeningTime) {
// //       setState(() {
// //         selectedOpeningTime = picked;
// //       });
// //     }
// //   }

// //   Future<void> _selectClosingTime(BuildContext context) async {
// //     final TimeOfDay? picked = await showTimePicker(
// //       context: context,
// //       initialTime: TimeOfDay.now(),
// //     );

// //     if (picked != null && picked != selectedClosingTime) {
// //       setState(() {
// //         selectedClosingTime = picked;
// //       });
// //     }
// //   }

// //   void _tambahLayanan() {
// //     setState(() {
// //       layananList.add(''); // Tambahkan layanan kosong ke daftar
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Tambah Bengkel'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             TextFormField(
// //               controller: namaBengkelController,
// //               decoration: InputDecoration(labelText: 'Nama Bengkel'),
// //             ),
// //             TextFormField(
// //               controller: alamatController,
// //               decoration: InputDecoration(labelText: 'Alamat'),
// //             ),
// //             TextFormField(
// //               controller: noHpController,
// //               decoration: InputDecoration(labelText: 'No. HP'),
// //             ),
// //             InputDecorator(
// //               decoration: InputDecoration(labelText: 'Owner'),
// //               child: Text(
// //                 ownerUUID,
// //                 style: TextStyle(color: Colors.black),
// //               ),
// //             ),
// //             InkWell(
// //               onTap: () => _selectOpeningTime(context),
// //               child: InputDecorator(
// //                 decoration: InputDecoration(
// //                   labelText: 'Jam Buka',
// //                 ),
// //                 child: Text(
// //                   selectedOpeningTime?.format(context) ?? 'Pilih Jam',
// //                 ),
// //               ),
// //             ),
// //             InkWell(
// //               onTap: () => _selectClosingTime(context),
// //               child: InputDecorator(
// //                 decoration: InputDecoration(
// //                   labelText: 'Jam Tutup',
// //                 ),
// //                 child: Text(
// //                   selectedClosingTime?.format(context) ?? 'Pilih Jam',
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 16),
// //             Text('Layanan:'),
// //             ListView.builder(
// //               shrinkWrap: true,
// //               itemCount: layananList.length,
// //               itemBuilder: (context, index) {
// //                 return Row(
// //                   children: [
// //                     Expanded(
// //                       child: TextFormField(
// //                         decoration: InputDecoration(
// //                           labelText: 'Layanan ${index + 1}',
// //                         ),
// //                         onChanged: (value) {
// //                           setState(() {
// //                             layananList[index] = value;
// //                           });
// //                         },
// //                       ),
// //                     ),
// //                     IconButton(
// //                       icon: Icon(Icons.remove),
// //                       onPressed: () {
// //                         setState(() {
// //                           layananList.removeAt(index);
// //                         });
// //                       },
// //                     ),
// //                   ],
// //                 );
// //               },
// //             ),
// //             ElevatedButton(
// //               onPressed: _tambahLayanan,
// //               child: Text('Tambah Layanan'),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Panggil fungsi _simpanData() secara asinkron
// //                 _simpanData();
// //               },
// //               child: Text('Simpan'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AddPage extends StatefulWidget {
//   @override
//   _AddPageState createState() => _AddPageState();
// }

// class _AddPageState extends State<AddPage> {
//   final TextEditingController namaBengkelController = TextEditingController();
//   final TextEditingController alamatController = TextEditingController();
//   final TextEditingController noHpController = TextEditingController();
//   TimeOfDay? selectedOpeningTime;
//   TimeOfDay? selectedClosingTime;
//   late String ownerEmail; // Ubah tipe data ke email

//   List<Layanan> layananList = [
//     Layanan(nama: 'Servis Berat', harga: 0)
//   ]; // Daftar layanan default

//   @override
//   void initState() {
//     super.initState();
//     // Panggil fungsi untuk mengambil email owner dari FirebaseAuth
//     _getOwnerEmail();
//   }

//   // Fungsi untuk mengambil email owner dari FirebaseAuth
//   Future<void> _getOwnerEmail() async {
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       if (user != null) {
//         setState(() {
//           ownerEmail = user.email!;
//         });
//       } else {
//         // Handle jika user tidak ditemukan
//       }
//     } catch (error) {
//       // Handle error jika terjadi kesalahan
//       print("Error: $error");
//     }
//   }

//   // Fungsi async untuk mengelola operasi asinkron
//   Future<void> _simpanData() async {
//     try {
//       List<Map<String, dynamic>> layananData = [];

//       for (Layanan layanan in layananList) {
//         layananData.add({
//           'nama': layanan.nama,
//           'harga': layanan.harga,
//         });
//       }

//       await FirebaseFirestore.instance.collection('workshop').add({
//         'name': namaBengkelController.text,
//         'address': alamatController.text,
//         'phone_number': noHpController.text,
//         'opening_time': selectedOpeningTime?.format(context) ?? '',
//         'closing_time': selectedClosingTime?.format(context) ?? '',
//         'owner': ownerEmail,
//         'layanan': layananData,
//       });

//       // Setelah menyimpan, kembali ke halaman sebelumnya
//       Navigator.pop(context);
//     } catch (error) {
//       // Handle error jika ada
//       print("Error: $error");
//       // Anda mungkin ingin menampilkan pesan kesalahan kepada pengguna
//     }
//   }

//   Future<void> _selectOpeningTime(BuildContext context) async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );

//     if (picked != null && picked != selectedOpeningTime) {
//       setState(() {
//         selectedOpeningTime = picked;
//       });
//     }
//   }

//   Future<void> _selectClosingTime(BuildContext context) async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );

//     if (picked != null && picked != selectedClosingTime) {
//       setState(() {
//         selectedClosingTime = picked;
//       });
//     }
//   }

//   void _tambahLayanan() {
//     setState(() {
//       layananList.add(
//           Layanan(nama: '', harga: 0)); // Tambahkan layanan kosong ke daftar
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tambah Bengkel'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextFormField(
//               controller: namaBengkelController,
//               decoration: InputDecoration(labelText: 'Nama Bengkel'),
//             ),
//             TextFormField(
//               controller: alamatController,
//               decoration: InputDecoration(labelText: 'Alamat'),
//             ),
//             TextFormField(
//               controller: noHpController,
//               decoration: InputDecoration(labelText: 'No. HP'),
//             ),
//             InputDecorator(
//               decoration: InputDecoration(labelText: 'Owner'),
//               child: Text(
//                 ownerEmail,
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             InkWell(
//               onTap: () => _selectOpeningTime(context),
//               child: InputDecorator(
//                 decoration: InputDecoration(
//                   labelText: 'Jam Buka',
//                 ),
//                 child: Text(
//                   selectedOpeningTime?.format(context) ?? 'Pilih Jam',
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () => _selectClosingTime(context),
//               child: InputDecorator(
//                 decoration: InputDecoration(
//                   labelText: 'Jam Tutup',
//                 ),
//                 child: Text(
//                   selectedClosingTime?.format(context) ?? 'Pilih Jam',
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Text('Layanan:'),
//             ListView.builder(
//               shrinkWrap: true,
//               itemCount: layananList.length,
//               itemBuilder: (context, index) {
//                 return Row(
//                   children: [
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           labelText: 'Layanan ${index + 1}',
//                         ),
//                         onChanged: (value) {
//                           setState(() {
//                             layananList[index].nama = value;
//                           });
//                         },
//                       ),
//                     ),
//                     SizedBox(width: 8),
// Expanded(
//   child: TextFormField(
//     decoration: InputDecoration(
//       labelText: 'Harga',
//     ),
//     keyboardType: TextInputType.number,
//     onChanged: (value) {
//       setState(() {
//         layananList[index].harga = int.parse(value);
//       });
//     },
//   ),
// ),
//                     IconButton(
//                       icon: Icon(Icons.remove),
//                       onPressed: () {
//                         setState(() {
//                           layananList.removeAt(index);
//                         });
//                       },
//                     ),
//                   ],
//                 );
//               },
//             ),
//             ElevatedButton(
//               onPressed: _tambahLayanan,
//               child: Text('Tambah Layanan'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Panggil fungsi _simpanData() secara asinkron
//                 _simpanData();
//               },
//               child: Text('Simpan'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Layanan {
//   late String nama;
//   late int harga;

//   Layanan({required this.nama, required this.harga});
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController namaBengkelController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();
  TimeOfDay? selectedOpeningTime;
  TimeOfDay? selectedClosingTime;
  late String ownerUUID;
  late String ownerEmail;

  List<Layanan> layananList = [Layanan(nama: 'Servis Berat', harga: 0)];

  @override
  void initState() {
    super.initState();
    // Panggil fungsi untuk mengambil UUID dan email owner dari FirebaseAuth
    _getOwnerData();
  }

  // Fungsi untuk mengambil UUID dan email owner dari FirebaseAuth
  Future<void> _getOwnerData() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        setState(() {
          ownerUUID = user.uid;
          ownerEmail = user.email!;
        });
      } else {
        // Handle jika user tidak ditemukan
      }
    } catch (error) {
      // Handle error jika terjadi kesalahan
      print("Error: $error");
    }
  }

  // Fungsi async untuk mengelola operasi asinkron
  Future<void> _simpanData() async {
    try {
      List<Map<String, dynamic>> layananData = [];

      for (Layanan layanan in layananList) {
        layananData.add({
          'nama': layanan.nama,
          'harga': layanan.harga,
        });
      }

      await FirebaseFirestore.instance.collection('workshop').add({
        'name': namaBengkelController.text,
        'address': alamatController.text,
        'phone_number': noHpController.text,
        'opening_time': selectedOpeningTime?.format(context) ?? '',
        'closing_time': selectedClosingTime?.format(context) ?? '',
        'owner': ownerUUID,
        'owner_email': ownerEmail,
        'layanan': layananData,
      });

      // Setelah menyimpan, kembali ke halaman sebelumnya
      Navigator.pop(context);
    } catch (error) {
      // Handle error jika ada
      print("Error: $error");
      // Anda mungkin ingin menampilkan pesan kesalahan kepada pengguna
    }
  }

  Future<void> _selectOpeningTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null && picked != selectedOpeningTime) {
      setState(() {
        selectedOpeningTime = picked;
      });
    }
  }

  Future<void> _selectClosingTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null && picked != selectedClosingTime) {
      setState(() {
        selectedClosingTime = picked;
      });
    }
  }

  void _tambahLayanan() {
    setState(() {
      layananList.add(Layanan(nama: '', harga: 0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Bengkel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: namaBengkelController,
              decoration: InputDecoration(labelText: 'Nama Bengkel'),
            ),
            TextFormField(
              controller: alamatController,
              decoration: InputDecoration(labelText: 'Alamat'),
            ),
            TextFormField(
              controller: noHpController,
              decoration: InputDecoration(labelText: 'No. HP'),
            ),
            InputDecorator(
              decoration: InputDecoration(labelText: 'Owner'),
              child: Text(
                ownerEmail,
                style: TextStyle(color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () => _selectOpeningTime(context),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Jam Buka',
                ),
                child: Text(
                  selectedOpeningTime?.format(context) ?? 'Pilih Jam',
                ),
              ),
            ),
            InkWell(
              onTap: () => _selectClosingTime(context),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Jam Tutup',
                ),
                child: Text(
                  selectedClosingTime?.format(context) ?? 'Pilih Jam',
                ),
              ),
            ),
            SizedBox(height: 16),
            Text('Layanan:'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: layananList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Layanan ${index + 1}',
                        ),
                        onChanged: (value) {
                          setState(() {
                            layananList[index].nama = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Harga',
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            layananList[index].harga = int.parse(value);
                          });
                        },
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          layananList.removeAt(index);
                        });
                      },
                    ),
                  ],
                );
              },
            ),
            ElevatedButton(
              onPressed: _tambahLayanan,
              child: Text('Tambah Layanan'),
            ),
            ElevatedButton(
              onPressed: () {
                // Panggil fungsi _simpanData() secara asinkron
                _simpanData();
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}

class Layanan {
  late String nama;
  late int harga;

  Layanan({required this.nama, required this.harga});
}
