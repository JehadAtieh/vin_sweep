import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../generated/l10n.dart';
import '../../unit_core/CustomTextField.dart';
import '../forgot_Password/forgotPassword.dart';
import '../register/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient container
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0A2342), // اللون الثاني
                  Color(0xFF728CAA), // اللون الأول
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                S.of(context).hellonsignIn,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 70, left: 18.0, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Custom Email TextField
                      CustomTextField(
                        label: S.of(context).gmail,
                        hintText: S.of(context).hintGmail,
                        iconPath: "assets/icons/ic-mail.png",
                        // Changed to icon path for consistency
                        controller: TextEditingController(),
                        inputType: TextInputType.emailAddress,
                      ),

                      // Custom Password TextField
                      CustomTextField(
                        label: S.of(context).password,
                        hintText: S.of(context).hintPassword,
                        iconPath: "assets/icons/ic-pass.png",
                        // Changed to icon path for consistency
                        controller: TextEditingController(),
                        obscureText: true,
                      ),

                      // Forgot Password Text
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Get.to(ForgotPasswordPage());
                          },
                          child: Text(
                            S.of(context).forgotPassword,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0A2342),
                              fontFamily: 'OpenSans', // تأكد من تطبيق الخط
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      // Sign In Button with Gradient
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.transparent,
                          minimumSize: const Size(300, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // rounded corners
                          ),
                          elevation: 0, // remove default shadow
                        ),
                        onPressed: () {
                          // Action when button is pressed
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF0A2342),
                                Color(0xFF728CAA),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius:
                                BorderRadius.circular(30), // rounded corners
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(
                              S.of(context).signIn,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      // Bottom Text for Sign Up
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              S.of(context).dontHaveAccount,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0A2342),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(RegisterPage());
                              },
                              child: Text(
                                S.of(context).signUp,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
