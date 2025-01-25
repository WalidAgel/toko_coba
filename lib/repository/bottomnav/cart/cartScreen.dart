import 'package:coba/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 216,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0XFFEAE2C6),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Uihelper.CustomText(
                      text: "coba",
                      color: const Color(0XFF000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Uihelper.CustomText(
                      text: "Coba in aja",
                      color: const Color(0XFF000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Uihelper.CustomText(
                          text: "HOME",
                          color: const Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        Uihelper.CustomText(
                          text: " - ",
                          color: const Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        Uihelper.CustomText(
                          text: "Walid Agel Pramadi (WAP)",
                          color: const Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 20,
              bottom: 100,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: Uihelper.CustomTextField(
                controller: SearchController(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Uihelper.CustomImage(img: "cart.png"),
        SizedBox(
          height: 20,
        ),
        Uihelper.CustomText(
            text: "Your order history will appear here \nfor easy reordering.",
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 12),
        Row(
          children: [
            SizedBox(
              height: 50,
              width: 20,
            ),
            Uihelper.CustomText(
                text: "Best Seller",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15)
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "5.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "CHITATO Keju\nSupreme 68gr ",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.12.700",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "6.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "fresh tomatoes\n1KG",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.17.000",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "7.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "Ultra milk full\ncream",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.15.000",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "8.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "Teh poka",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.15.000",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "8.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "Teh poka",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.15.000",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "5.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "CHITATO Keju\nSupreme 68gr ",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.12.700",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "6.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "fresh tomatoes\n1KG",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.17.000",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "7.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "Ultra milk full\ncream",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.15.000",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "8.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "Teh poka",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.15.000",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomImage(img: "8.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Uihelper.CustomText(
                      text: "Teh poka",
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                  Uihelper.CustomText(
                      text: "Rp.15.000",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
