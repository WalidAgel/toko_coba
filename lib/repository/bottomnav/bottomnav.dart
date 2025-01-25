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
  int currentIndex = 0; 

  final List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    Categoryscreen(),
    Printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages, 
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(
              img: "logoHome.jpg", 
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
        selectedItemColor: Color(0XFF98D8EF), 
        unselectedItemColor: Colors.black, 
        onTap: (index) {

          print("Navigasi ke indeks: $index");
          setState(() {
            currentIndex = index; 
          });
        },
      ),
    );
  }
}
