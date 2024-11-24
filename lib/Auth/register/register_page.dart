import 'package:flutter/material.dart';
import '../../unit_core/CustomTextField.dart';
import '../../unit_core/customButton.dart';
import '../../generated/l10n.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // خلفية متدرجة
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0A2342), // اللون الأول
                  Color(0xFF728CAA), // اللون الثاني
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).createYourAccount, // النص من ملف الترجمات
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.of(context).pleaseFillYourInformationBelow, // النص من ملف الترجمات
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              ),
            ),
          ),
          // المحتوى الرئيسي
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              decoration: BoxDecoration(
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
                      // حقل الاسم
                      CustomTextField(
                        label: S.of(context).name,
                        hintText: "",
                        iconPath: "assets/icons/ic-name.png",
                        controller: TextEditingController(),
                      ),
                      // حقل البريد الإلكتروني
                      CustomTextField(
                        label: S.of(context).email,
                        hintText: S.of(context).hintGmail,
                        iconPath: "assets/icons/ic-mail.png",
                        controller: TextEditingController(),
                        inputType: TextInputType.emailAddress,
                      ),
                      // حقل كلمة المرور
                      CustomTextField(
                        label: S.of(context).password,
                        hintText: S.of(context).hintPassword,
                        iconPath: "assets/icons/ic-pass.png",
                        controller: TextEditingController(),
                        obscureText: true,
                      ),
                      // حقل الرمز البريدي
                      CustomTextField(
                        label: S.of(context).zipCode,
                        hintText: "",
                        iconPath: "assets/icons/ic-zip.png",
                        controller: TextEditingController(),
                        inputType: TextInputType.number,
                      ),
                      const SizedBox(height: 20),
                      // زر التسجيل
                      CustomButton(
                        text: S.of(context).registerBtn,
                        onPressed: () {
                          // تنفيذ العمليات بعد الضغط على زر التسجيل
                        },
                      ),
                      const SizedBox(height: 100),
                      // نص حقوق الملكية في الأسفل
                      Image.asset("assets/images/Copy Rights.png")
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
