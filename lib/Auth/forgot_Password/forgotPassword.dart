import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../generated/l10n.dart';
import '../../unit_core/CustomTextField.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

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
              padding: const EdgeInsets.only(top: 100.0, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).forgotPassword, // "نسيت كلمة المرور"
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    S.of(context).pleaseFillYourInformationBelow, // "Please fill in your information below to reset your password"
                    style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'OpenSans'), // Open Sans font
                  ),
                ],
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
                  padding: const EdgeInsets.only(top: 70, left: 18.0, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Email TextField for password reset
                      CustomTextField(
                        controller: emailController,
                        label: S.of(context).gmail,
                        hintText: S.of(context).hintGmail,
                        iconPath: "assets/icons/ic-mail.png",
                        inputType: TextInputType.emailAddress,
                      )
                      ,
                      const SizedBox(height: 300),
                      // Send Button with gradient
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.transparent,
                          minimumSize: const Size(300, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {
                          String email = emailController.text;

                          // Add validation logic here
                          if (email.isEmpty || !GetUtils.isEmail(email)) {
                            Get.snackbar("Error", "Please enter a valid email");
                          } else {
                            // Handle sending the reset password request
                            // For example, call an API to send a reset password email
                            print("Sending password reset request for email: $email");
                          }
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
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(
                              S.of(context).send, // "إرسال"
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Image.asset("assets/images/Copy Rights.png"),
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
