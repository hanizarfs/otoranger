// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // class EditPage extends StatefulWidget {
// //   final String workshopId;

// //   EditPage({required this.workshopId});

// //   @override
// //   _EditPageState createState() => _EditPageState();
// // }

// // class _EditPageState extends State<EditPage> {
// //   final TextEditingController namaBengkelController = TextEditingController();
// //   final TextEditingController alamatController = TextEditingController();
// //   final TextEditingController noHpController = TextEditingController();
// //   final TextEditingController jamBukaController = TextEditingController();
// //   final TextEditingController jamTutupController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Panggil fungsi untuk mengambil data bengkel
// //     _loadWorkshopData();
// //   }

// //   Future<void> _loadWorkshopData() async {
// //     try {
// //       // Ambil data bengkel berdasarkan ID
// //       var workshopSnapshot = await FirebaseFirestore.instance
// //           .collection('workshop')
// //           .doc(widget.workshopId)
// //           .get();

// //       // Isi nilai ke dalam controller
// //       var workshopData = workshopSnapshot.data() as Map<String, dynamic>;
// //       namaBengkelController.text = workshopData['name'] ?? '';
// //       alamatController.text = workshopData['address'] ?? '';
// //       noHpController.text = workshopData['phone_number'] ?? '';
// //       jamBukaController.text = workshopData['opening_time'] ?? '';
// //       jamTutupController.text = workshopData['closing_time'] ?? '';
// //     } catch (error) {
// //       // Handle error jika terjadi kesalahan
// //       print("Error: $error");
// //       // Anda mungkin ingin menampilkan pesan kesalahan kepada pengguna
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Edit Bengkel'),
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
// //             TextFormField(
// //               controller: jamBukaController,
// //               decoration: InputDecoration(labelText: 'Jam Buka'),
// //             ),
// //             TextFormField(
// //               controller: jamTutupController,
// //               decoration: InputDecoration(labelText: 'Jam Tutup'),
// //             ),
// //             ElevatedButton(
// //               onPressed: () async {
// //                 // Tambahkan logika untuk menyimpan data ke Firebase
// //                 try {
// //                   await FirebaseFirestore.instance
// //                       .collection('workshop')
// //                       .doc(widget.workshopId)
// //                       .update({
// //                     'name': namaBengkelController.text,
// //                     'address': alamatController.text,
// //                     'phone_number': noHpController.text,
// //                     'opening_time': jamBukaController.text,
// //                     'closing_time': jamTutupController.text,
// //                   });

// //                   // Menampilkan notifikasi Snackbar setelah berhasil diedit
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(
// //                       content: Text('Bengkel berhasil diubah.'),
// //                     ),
// //                   );

// //                   // Kembali ke halaman sebelumnya (OwnerHomePage)
// //                   Navigator.pop(context);
// //                 } catch (error) {
// //                   // Menampilkan notifikasi Snackbar jika terjadi kesalahan
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(
// //                       content: Text('Terjadi kesalahan. Silakan coba lagi.'),
// //                     ),
// //                   );
// //                 }
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

// class EditPage extends StatefulWidget {
//   final String workshopId;

//   EditPage({required this.workshopId});

//   @override
//   _EditPageState createState() => _EditPageState();
// }

// class _EditPageState extends State<EditPage> {
//   final TextEditingController namaBengkelController = TextEditingController();
//   final TextEditingController alamatController = TextEditingController();
//   final TextEditingController noHpController = TextEditingController();
//   TimeOfDay? jamBuka;
//   TimeOfDay? jamTutup;

//   @override
//   void initState() {
//     super.initState();
//     // Panggil fungsi untuk mengambil data bengkel
//     _loadWorkshopData();
//   }

//   Future<void> _loadWorkshopData() async {
//     try {
//       // Ambil data bengkel berdasarkan ID
//       var workshopSnapshot = await FirebaseFirestore.instance
//           .collection('workshop')
//           .doc(widget.workshopId)
//           .get();

//       // Isi nilai ke dalam controller
//       var workshopData = workshopSnapshot.data() as Map<String, dynamic>;
//       namaBengkelController.text = workshopData['name'] ?? '';
//       alamatController.text = workshopData['address'] ?? '';
//       noHpController.text = workshopData['phone_number'] ?? '';

//       // Convert string jam buka dan jam tutup menjadi TimeOfDay
//       jamBuka = _convertStringToTimeOfDay(workshopData['opening_time']);
//       jamTutup = _convertStringToTimeOfDay(workshopData['closing_time']);
//     } catch (error) {
//       // Handle error jika terjadi kesalahan
//       print("Error: $error");
//       // Anda mungkin ingin menampilkan pesan kesalahan kepada pengguna
//     }
//   }

//   TimeOfDay _convertStringToTimeOfDay(String? timeString) {
//     if (timeString != null && timeString.isNotEmpty) {
//       List<String> timeParts = timeString.split(':');
//       return TimeOfDay(
//         hour: int.parse(timeParts[0]),
//         minute: int.parse(timeParts[1]),
//       );
//     } else {
//       return TimeOfDay.now();
//     }
//   }

//   Future<void> _selectTime(BuildContext context, bool isJamBuka) async {
//     TimeOfDay? selectedTime = await showTimePicker(
//       context: context,
//       initialTime:
//           isJamBuka ? jamBuka ?? TimeOfDay.now() : jamTutup ?? TimeOfDay.now(),
//     );

//     if (selectedTime != null) {
//       setState(() {
//         if (isJamBuka) {
//           jamBuka = selectedTime;
//         } else {
//           jamTutup = selectedTime;
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Bengkel'),
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
//             TextFormField(
//               readOnly: true,
//               controller:
//                   TextEditingController(text: jamBuka?.format(context) ?? ''),
//               decoration: InputDecoration(labelText: 'Jam Buka'),
//               onTap: () {
//                 _selectTime(context, true);
//               },
//             ),
//             TextFormField(
//               readOnly: true,
//               controller:
//                   TextEditingController(text: jamTutup?.format(context) ?? ''),
//               decoration: InputDecoration(labelText: 'Jam Tutup'),
//               onTap: () {
//                 _selectTime(context, false);
//               },
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 // Tambahkan logika untuk menyimpan data ke Firebase
//                 try {
//                   await FirebaseFirestore.instance
//                       .collection('workshop')
//                       .doc(widget.workshopId)
//                       .update({
//                     'name': namaBengkelController.text,
//                     'address': alamatController.text,
//                     'phone_number': noHpController.text,
//                     'opening_time': jamBuka?.format(context) ?? '',
//                     'closing_time': jamTutup?.format(context) ?? '',
//                   });

//                   // Menampilkan notifikasi Snackbar setelah berhasil diedit
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text('Bengkel berhasil diubah.'),
//                     ),
//                   );

//                   // Kembali ke halaman sebelumnya (OwnerHomePage)
//                   Navigator.pop(context);
//                 } catch (error) {
//                   // Menampilkan notifikasi Snackbar jika terjadi kesalahan
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text('Terjadi kesalahan. Silakan coba lagi.'),
//                     ),
//                   );
//                 }
//               },
//               child: Text('Simpan'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class EditPage extends StatefulWidget {
  final String documentId;

  const EditPage({Key? key, required this.documentId}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController namaBengkelController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();
  TimeOfDay? selectedOpeningTime;
  TimeOfDay? selectedClosingTime;
  late String ownerUUID;
  late String ownerEmail;

  List<Layanan> layananList = [];

  @override
  void initState() {
    super.initState();
    _getOwnerData();
    _getWorkshopData();
  }

  Future<void> _getOwnerData() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        setState(() {
          ownerUUID = user.uid;
          ownerEmail = user.email!;
        });
      } else {
        // Handle if the user is not found
      }
    } catch (error) {
      print("Error: $error");
    }
  }

  Future<void> _getWorkshopData() async {
    try {
      DocumentSnapshot workshopSnapshot = await FirebaseFirestore.instance
          .collection('workshop')
          .doc(widget.documentId)
          .get();

      Map<String, dynamic> workshopData =
          workshopSnapshot.data() as Map<String, dynamic>;

      setState(() {
        namaBengkelController.text = workshopData['name'];
        alamatController.text = workshopData['address'];
        noHpController.text = workshopData['phone_number'];
        selectedOpeningTime =
            _convertStringToTimeOfDay(workshopData['opening_time']);
        selectedClosingTime =
            _convertStringToTimeOfDay(workshopData['closing_time']);

        List<dynamic> layananData = workshopData['layanan'];
        layananList = layananData
            .map((layanan) =>
                Layanan(nama: layanan['nama'], harga: layanan['harga']))
            .toList();
      });
    } catch (error) {
      print("Error: $error");
    }
  }

  TimeOfDay _convertStringToTimeOfDay(String timeString) {
    List<String> parts = timeString.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  Future<void> _simpanData() async {
    try {
      List<Map<String, dynamic>> layananData = [];

      for (Layanan layanan in layananList) {
        layananData.add({
          'nama': layanan.nama,
          'harga': layanan.harga,
        });
      }

      await FirebaseFirestore.instance
          .collection('workshop')
          .doc(widget.documentId)
          .update({
        'name': namaBengkelController.text,
        'address': alamatController.text,
        'phone_number': noHpController.text,
        'opening_time': selectedOpeningTime?.format(context) ?? '',
        'closing_time': selectedClosingTime?.format(context) ?? '',
        'owner': ownerUUID,
        'owner_email': ownerEmail,
        'layanan': layananData,
      });

      Navigator.pop(context);
    } catch (error) {
      print("Error: $error");
    }
  }

  Future<void> _selectOpeningTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedOpeningTime ?? TimeOfDay.now(),
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
      initialTime: selectedClosingTime ?? TimeOfDay.now(),
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
        title: Text('Edit Bengkel'),
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
