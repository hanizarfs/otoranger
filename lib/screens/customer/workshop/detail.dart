import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class WorkshopDetailPage extends StatefulWidget {
  final String workshopId;

  WorkshopDetailPage({required this.workshopId});

  @override
  _WorkshopDetailPageState createState() => _WorkshopDetailPageState();
}

class _WorkshopDetailPageState extends State<WorkshopDetailPage> {
  Map<String, dynamic>? workshopData;
  List<bool> selectedLayanan = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Bengkel'),
      ),
      body: FutureBuilder<DocumentSnapshot>(
        // Ganti 'workshop' dengan nama koleksi Firebase Anda
        future: FirebaseFirestore.instance
            .collection('workshop')
            .doc(widget.workshopId)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            workshopData = snapshot.data!.data() as Map<String, dynamic>;
            selectedLayanan =
                List<bool>.filled(workshopData!['layanan'].length, false);

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama Bengkel: ${workshopData!['name']}'),
                  SizedBox(height: 8),
                  Text('Alamat: ${workshopData!['address']}'),
                  SizedBox(height: 8),
                  Text('Nomor HP: ${workshopData!['phone_number']}'),
                  SizedBox(height: 8),
                  Text('Jam Buka: ${workshopData!['opening_time']}'),
                  SizedBox(height: 8),
                  Text('Jam Tutup: ${workshopData!['closing_time']}'),
                  SizedBox(height: 8),
                  Text('Pemilik: ${workshopData!['owner_email']}'),
                  SizedBox(height: 8),
                  Text('Layanan:'),
                  ...List.generate(
                    workshopData!['layanan'].length,
                    (index) => CheckboxListTile(
                      title: Text(
                          'Nama: ${workshopData!['layanan'][index]['nama']}'),
                      subtitle: Text(
                          'Harga: ${workshopData!['layanan'][index]['harga']}'),
                      value: selectedLayanan[index],
                      onChanged: (value) {
                        setState(() {
                          selectedLayanan[index] = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
