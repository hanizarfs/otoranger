import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page - Customer'),
      ),
      body: FutureBuilder<QuerySnapshot>(
        // Ganti 'workshop' dengan nama koleksi Firebase Anda
        future: FirebaseFirestore.instance.collection('workshop').get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // Menampilkan data bengkel dari Firebase
            var workshops = snapshot.data!.docs;
            return ListView.builder(
              itemCount: workshops.length,
              itemBuilder: (context, index) {
                var workshop = workshops[index].data() as Map<String, dynamic>;
                return Card(
                  child: ListTile(
                    title: Text(workshop['name']),
                    // Tambahkan lebih banyak detail atau aksi jika diperlukan
                    onTap: () {
                      // Implementasikan apa yang terjadi saat bengkel diklik
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
