import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BRImo"),
        backgroundColor: Colors.blue,
      ),
        body: SingleChildScrollView(
          child: Column(
        children: [
          // 🔵 SALDO
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saldo Anda",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  "Rp 1.000.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // 🔲 MENU
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menuItem(Icons.send, "Transfer"),
              menuItem(Icons.account_balance, "BRIVA"),
              menuItem(Icons.payment, "Pembayaran"),
              menuItem(Icons.phone_android, "Top Up"),
            ],
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Promo Hari Ini",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Mulai",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menuItem(Icons.send, "Transfer"),
              menuItem(Icons.account_balance, "BRIVA"),
              menuItem(Icons.payment, "Pembayaran"),
              menuItem(Icons.phone_android, "Top Up"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menuItem(Icons.credit_card, "BRIZZI"),
              menuItem(Icons.receipt, "Tagihan"),
              menuItem(Icons.save, "Simpanan"),
              menuItem(Icons.more_horiz, "Lainnya"),
                      ],
                    ),
                  ],
                    ),
                  ),
              );
            }
          }
          Widget menuItem(IconData icon, String text) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, size: 22),
                ),
                SizedBox(height: 5),
                Text(text),
              ],
            );
          }