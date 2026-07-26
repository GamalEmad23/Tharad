import 'package:flutter/material.dart';
import 'package:tharad/core/themes/color/app_colors.dart';
import 'package:tharad/core/widgets/custome_button.dart';
import 'package:tharad/core/widgets/custome_text.dart';
import 'package:tharad/core/widgets/dottedBorder/dotted_border.dart';
import 'package:tharad/core/widgets/dottedBorder/dotted_border_options.dart';
import 'package:tharad/features/auth/view/login_screen.dart';
import 'package:tharad/features/auth/view/widgets/custome_auth_under_row.dart';
import 'package:tharad/features/auth/view/widgets/custome_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                text: " انشاء حساب جديد",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: h * .025),

              ///
              Align(
                alignment: AlignmentGeometry.topRight,
                child: CustomeText(
                  text: "الصوره الشخصيه",
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),

              ///
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  radius: Radius.circular(5),
                  color: AppColors.primaryDark,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(47, 83, 163, 150),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: w * .1,
                      vertical: h * .03,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.photo_camera_outlined,
                          color: AppColors.icon,
                        ),

                        CustomeText(
                          text: "الملفات المسموح بيها :  JPEG , PNG",
                          fontSize: 18,
                          textColor: AppColors.textSecondary,
                        ),

                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: CustomeText(
                            text: "الحد الاقصي : 5MB",
                            fontSize: 12,
                            textColor: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * .025),

              /// user name
              Align(
                alignment: AlignmentGeometry.topRight,
                child: CustomeText(
                  text: "اسم المستخدم",
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
              CustomeTextFormField(hintText: 'thar22'),

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

              /// re password
              Align(
                alignment: AlignmentGeometry.topRight,
                child: CustomeText(
                  text: "تأكيد كلمة المرور",
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
                primaryText: "لديك حساب؟ ",
                secondarText: " تسجيل الدخول ",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false,
                  );
                },
              ),
              SizedBox(height: h * .025),
            ],
          ),
        ),
      ),
    );
  }
}
