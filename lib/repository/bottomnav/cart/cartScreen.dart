import 'package:coba/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  Cartscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 176,
                width: double.infinity,
                color: const Color(0XFFEAE2C6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
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
        ],
      ),
    );
  }
}
