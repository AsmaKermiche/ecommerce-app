import 'package:ecommerceapp/constant.dart';
import 'package:ecommerceapp/custom_text.dart';
import 'package:ecommerceapp/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
class LoginScreen extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Row(
              children: [
                  CustomText(text: "Welcome,",color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),
                SizedBox(
                  width: 140,
                ),
                CustomText(text: "Sign Up",color: primaryColor,fontSize: 18,)
              ],
            ),
            SizedBox(
              height: 5,
            ),
            CustomText(text: "Sign in to continue",color: Colors.grey,fontSize: 14,),
            SizedBox(height: 60,),
            Column(
              children: [
                CustomText(text: "Email",fontWeight: FontWeight.bold, fontSize: 14,),

                TextField(
                  decoration: InputDecoration(
                  hintText: "iamdavid@gmail.com",
                    hintStyle: TextStyle(
                    color: Colors.grey,
                  )
                ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20,),
                CustomText(text: "Password",fontWeight: FontWeight.bold, fontSize: 14,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your password (+6 caracters)",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 10,),
                CustomText(text: "Forgot Password?",alignment: Alignment.topRight,fontSize: 14,)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 50.0,
              width: 300,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: primaryColor)),
                onPressed: () {},
                padding: EdgeInsets.all(10.0),
                color: primaryColor,
                textColor: Colors.white,
                child: CustomText(text: 'SIGN IN', color: Colors.white,fontSize: 14,alignment: Alignment.center,fontWeight: FontWeight.bold,)
              ),
            ),
            SizedBox(height: 20,),
            CustomText(text: "-OR-",fontSize: 14,alignment: Alignment.center,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInButton.mini(
                  buttonType: ButtonType.google,
                  buttonSize: ButtonSize.large,
                  onPressed: () {
                    controller.GoogleSignInMethod();
                  },
                ),
                SizedBox(width: 15,),
                SignInButton.mini(
                  buttonType: ButtonType.facebook,
                  buttonSize: ButtonSize.large,
                  onPressed: () {},
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
