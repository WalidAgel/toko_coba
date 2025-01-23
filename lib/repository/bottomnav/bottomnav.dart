import 'package:coba/repository/bottomnav/cart/cartScreen.dart';
import 'package:coba/repository/bottomnav/category/categoryScreen.dart';
import 'package:coba/repository/bottomnav/home/homeScreen.dart';
import 'package:coba/repository/bottomnav/print/printScreen.dart';
import 'package:coba/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentIndex = 0; // Indeks halaman saat ini

  final List<Widget> pages = [
    const Homescreen(),
     Cartscreen(),
    const Categoryscreen(),
    const Printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages, // Menampilkan halaman sesuai `currentIndex`
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(
              img: "logoHome.jpg", // Menggunakan path yang sudah valid
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(
              img: "logoCart.jpg",
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(
              img: "logoCategory.jpg",
            ),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(
              img: "logoPrint.jpg",
            ),
            label: "Print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue, // Warna item aktif
        unselectedItemColor: Colors.grey, // Warna item nonaktif
        onTap: (index) {
          // Debugging untuk memastikan onTap berfungsi
          print("Navigasi ke indeks: $index");
          setState(() {
            currentIndex = index; // Memperbarui indeks halaman
          });
        },
      ),
    );
  }
}
