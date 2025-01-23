import 'package:coba/repository/bottomnav/bottomnav.dart';
import 'package:coba/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Uihelper.CustomImage(img: "onboard.jpg"),
          SizedBox(
            height: 30,
          ),
          Uihelper.CustomImage(img: "logo1.jpg"),
          SizedBox(
            height: 20,
          ),
          Uihelper.CustomText(
              text: "pamekasan app Enjoy with ease ",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 20),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 185,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFFFFFFF)),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 40,
                    width: 280,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnav()));
                      },
                      style: ElevatedButton.styleFrom(    
                        backgroundColor: Color(0XFFBFBBA9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Login with GOOGLE",
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Uihelper.CustomText(text: "Access your saved address from GOOGLE automaticaly!", color: Color(0XFF000000), fontWeight: FontWeight.normal, fontSize: 10),
                  SizedBox(height: 20,),
                  Uihelper.CustomText(text: "or Login with phone number ", color: Color(0XFF155E95), fontWeight: FontWeight.bold, fontSize: 10)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
