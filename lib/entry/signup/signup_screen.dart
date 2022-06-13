import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_chelitos/entry/login/login_screen.dart';
import 'package:mis_chelitos/utils/app_button.dart';
import 'package:mis_chelitos/utils/app_text_field.dart';
import 'package:mis_chelitos/utils/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration:const  BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90.0)
                  ),
              ),
              child: const Text("Create Account", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(height: 20),
            AppTextField(labelText: 'Name'),
            const SizedBox(height: 10),
            AppTextField(labelText: 'Email'),
            const SizedBox(height: 10),
            AppTextField(labelText: 'Phone number'),
            const SizedBox(height: 10),
            AppTextField(labelText: 'ID/Cedula'),
            AppButton(
              width: MediaQuery.of(context).size.width,
              onPressed: (){},
              text: 'Register',
            ),
            const SizedBox(height: 20),
            Align(
                alignment: Alignment.center,
                child:  GestureDetector(
                  onTap: (){
                    Get.to(()=> const LoginScreen());
                  },
                  child: RichText(text: TextSpan(
                      text: "Already a member?  ", style: TextStyle(color: primaryColor, fontSize: 20),
                      children: [
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(color: Colors.tealAccent, fontSize: 22, decoration: TextDecoration.underline,)
                        ),
                      ]
                  )),
                )),


            const SizedBox(height: 40.0),
            const Text("Sign up with", style: TextStyle(color: primaryColor, fontSize: 20)),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconMaterialButton(imageUrl: 'assets/images/logo/facebook.png'),
                IconMaterialButton(imageUrl: 'assets/images/logo/twitter.png'),
                IconMaterialButton(imageUrl: 'assets/images/logo/google.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
