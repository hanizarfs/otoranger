// import 'package:flutter/material.dart';

// class CustomerHomePage extends StatelessWidget {
//   final String userEmail;

//   const CustomerHomePage({Key? key, required this.userEmail}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Your home page implementation here
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page - Customer'),
//       ),
//       body: Center(
//         child: Text('Welcome, $userEmail!'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:otoranger/screens/customer/workshop/index.dart';
import 'package:otoranger/screens/customer/order/index.dart';
import 'package:otoranger/screens/customer/profile/index.dart';

class CustomerHomePage extends StatelessWidget {
  final String userEmail;

  const CustomerHomePage({Key? key, required this.userEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page - Customer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome, $userEmail!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkshopCustomerPage(),
                  ),
                );
              },
              child: Text('Cari Bengkel'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderCustomerPage(),
                  ),
                );
              },
              child: Text('Lihat Pesanan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileCustomerPage(),
                  ),
                );
              },
              child: Text('Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
