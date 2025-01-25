import 'package:coba/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  var kitchen = [
    {"img": "1.png", "text": "Vegetables & \nFruits"},
    {"img": "2.png", "text": "kitchen \ningredients"},
    {"img": "3.png", "text": "Beverage products & \nDairy"},
    {"img": "4.png", "text": "snacks"},
  ];
  Categoryscreen({Key? key}) : super(key: key);

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
                  controller: searchController,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
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
      ),
    );
  }
}
