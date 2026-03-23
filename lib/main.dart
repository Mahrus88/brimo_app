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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Saldo Anda", style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                Text(
                  "Rp 10.000.000",
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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.send),
                  Text("Transfer"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.account_balance),
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
        ],
      ),
    );
  }
}
Text("TEST BRIMO MAHRUS")