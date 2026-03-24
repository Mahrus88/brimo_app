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
            padding: EdgeInsets.all(20),
            color: Colors.blue[700],
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.send, size: 20),
                  ),
                  SizedBox(height: 5),
                  Text("Transfer"),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.account_balance, size: 20),
                  ),
                  SizedBox(height: 5),
                  Text("BRIVA"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.payment),
                  Text("Pembayaran"),
                ],
              ),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone_android),
                    Text("Top Up"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.credit_card),
                    Text("BRIZZI"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.receipt),
                    Text("Tagihan"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.save),
                    Text("Simpanan"),
                  ],
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