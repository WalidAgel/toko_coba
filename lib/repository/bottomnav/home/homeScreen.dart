import 'package:coba/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  var Megasale = [
    {"img": "9.png", "text": "Gadget & \nAppliances"},
    {"img": "10.png", "text": "Parfum "},
    {"img": "11.png", "text": "Soap & \nShampoo"},
    {"img": "12.png", "text": "Milk & Diapers"},
  ];
  var kitchen = [
    {"img": "1.png", "text": "Vegetables & \nFruits"},
    {"img": "2.png", "text": "kitchen \ningredients"},
    {"img": "3.png", "text": "Beverage products & \nDairy"},
    {"img": "4.png", "text": "snacks"},
  ];
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
                  color: const Color(0XFF98D8EF),
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
          height: 20,
        ),
        Container(
            height: 167,
            width: double.infinity,
            color: Color(0XFF98D8EF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Uihelper.CustomText(
                    text: "Mega sale",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 108,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0XFFD9D9D9),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Uihelper.CustomText(
                                      text: Megasale[index]["text"]!,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10,
                                    ),
                                    const SizedBox(height: 10),
                                    Uihelper.CustomImage(
                                      img: Megasale[index]["img"]!,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: Megasale.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 50,
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
          height:30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Uihelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14)
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 78,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9D9D9)),
                        child: Uihelper.CustomImage(
                            img: kitchen[index]["img"].toString()),
                      ),
                    ),
                    Uihelper.CustomText(
                        text: kitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 10)
                  ],
                );
              },
              itemCount: kitchen.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        )
      ],
    ));
  }
}
