// index.dart

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:otoranger/screens/owner/workshop/edit.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Bengkel'),
      ),
      body: BengkelListView(),
    );
  }
}

class BengkelListView extends StatelessWidget {
  Future<void> _confirmDelete(BuildContext context, String workshopId) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Hapus'),
          content: Text('Apakah Anda yakin akan menghapus bengkel ini?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog konfirmasi
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () async {
                // Tambahkan logika untuk menghapus bengkel
                await FirebaseFirestore.instance
                    .collection('workshop')
                    .doc(workshopId)
                    .delete();

                // Menampilkan notifikasi Snackbar setelah berhasil dihapus
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Bengkel berhasil dihapus.'),
                  ),
                );

                Navigator.of(context).pop(); // Tutup dialog konfirmasi
              },
              child: Text('Hapus'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('workshop').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        var workshops = snapshot.data?.docs;

        return ListView.builder(
          itemCount: workshops!.length,
          itemBuilder: (context, index) {
            var workshopData = workshops[index].data() as Map<String, dynamic>;
            var workshopId = workshops[index].id;

            return Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                title: Text(workshopData['name']),
                subtitle: Text(workshopData['address']),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Navigasi ke halaman edit dan kirim ID bengkel
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPage(
                              documentId: workshopId,
                            ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        // Konfirmasi sebelum menghapus
                        _confirmDelete(context, workshopId);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
