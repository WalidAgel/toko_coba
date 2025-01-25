import 'package:coba/domain/constants/appcolor.dart';
import 'package:coba/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.backgroundColor,
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
          Uihelper.CustomText(
              text: "Print store",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28),
          SizedBox(
            height: 20,
          ),
          Uihelper.CustomText(
              text:
                  "Coba in aja  ensures safe and quality printouts at every step of the \nprocess.",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 10),
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                height: 165,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 59,
                      width: 172,
                      decoration: BoxDecoration(
                        color: Color(0XFFA9C46C),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Uihelper.CustomText(
                          text: "Upload File",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Uihelper.CustomImage(img: "13.png"),
                right: 20,
                bottom: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
