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
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.headset_mic),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // 🔵 HEADER + SALDO
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),

                Positioned(
                  left: 15,
                  right: 15,
                  top: 60,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Saldo Rekening Utama",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Rp 1.000.000.000,00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 2,
                          color: Colors.blue[200],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Semua rekeningmu",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 100),

            // 🔲 MENU UTAMA
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(child: menuItem(Icons.send, "Transfer")),
                  Expanded(child: menuItem(Icons.account_balance, "BRIVA")),
                  Expanded(child: menuItem(Icons.water_drop, "PDAM")),
                  Expanded(child: menuItem(Icons.phone_android, "Pulsa")),
                ],
              ),
            ),

            SizedBox(height: 20),

            // 🟠 PROMO
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promo Hari Ini",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Mulai",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            // 🔍 SEARCH
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text("Cari Fitur"),
                ],
              ),
            ),

            SizedBox(height: 20),
            // 🔲 MENU TAMBAHAN (8 MENU)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [

                  // BARIS 1
                  Row(
                    children: [
                      Expanded(child: menuItem(Icons.phone_android, "Top Up")),
                      Expanded(child: menuItem(Icons.credit_card, "BRIZZI")),
                      Expanded(child: menuItem(Icons.receipt, "Tagihan")),
                      Expanded(child: menuItem(Icons.account_balance, "Setor Tarik")),
                    ],
                  ),

                  SizedBox(height: 15),

                  // BARIS 2
                  Row(
                    children: [
                      Expanded(child: menuItem(Icons.trending_up, "Investasi")),
                      Expanded(child: menuItem(Icons.volunteer_activism, "Donasi")),
                      Expanded(child: menuItem(Icons.attach_money, "Pinjaman")),
                      Expanded(child: menuItem(Icons.more_horiz, "Lainnya")),
                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),

      // 🔻 BOTTOM NAV
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Mutasi",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[100],
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Icon(Icons.qr_code, color: Colors.white),
              ),
            ),
            label: "QRIS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: "Aktivitas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Akun",
          ),
        ],
      ),
    );
  }
}

// 🔧 MENU ITEM
Widget menuItem(IconData icon, String text) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(icon, size: 24, color: Colors.blue),
      ),
      SizedBox(height: 5),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
    ],
  );
}