import 'package:flutter/material.dart';
import 'package:tharad/core/widgets/custome_button.dart';
import 'package:tharad/core/widgets/custome_text.dart';
import 'package:tharad/features/auth/view/sign_up_screen.dart';
import 'package:tharad/features/auth/view/widgets/custome_auth_under_row.dart';
import 'package:tharad/features/auth/view/widgets/custome_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * .04),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: h * .1, bottom: h * .025),
                child: Center(
                  child: Image.asset("assets/images/logo.png", width: w * .6),
                ),
              ),

              ///
              CustomeText(
                text: "تسجيل الدخول",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: h * .025),

              /// email
              Align(
                alignment: AlignmentGeometry.topRight,
                child: CustomeText(
                  text: "البريد الإلكتروني",
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
              CustomeTextFormField(hintText: 'Tharad@gmail.com'),

              /// password
              Align(
                alignment: AlignmentGeometry.topRight,
                child: CustomeText(
                  text: "كلمة المرور",
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
              CustomeTextFormField(
                hintText: '***********',
                sec: true,
                isPass: true,
              ),
              SizedBox(height: h * .025),

              ///
              CustomeButton(
                height: h * .08,
                width: w,
                btnText: 'إنشاء حساب جديد',
              ),
              SizedBox(height: h * .025),

              ///
              CustomeAuthUnderRow(
                primaryText: "ليس لديك حساب؟ ",
                secondarText: " إنشاء حساب جديد ",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
