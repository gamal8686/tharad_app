import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_app/core/components/app_image.dart';
import 'package:tharad_app/core/components/app_button.dart';
import 'package:tharad_app/core/logic/goto.dart';
import 'package:tharad_app/views/otp.dart';

import '../core/components/app_button_navigator_text.dart .dart';
import '../core/components/app_input.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
        
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 40.h),
              Center(child: AppImage(path: 'login.png')),
              SizedBox(height: 40.h),
        
              Text(
                'إنشاء حساب جديد',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0D1D1E),
                ),
              ),
              SizedBox(height: 24.h),
        
              Text('الصورة الشخصية'),
        
              DottedBorder(
                color: Color(0xff42867B),
                borderType: BorderType.Rect,
                dashPattern: [20, 5],
                strokeWidth: 2.w,
                padding: EdgeInsets.all(16.w),
        
                child: Container(
                  width: 350.w,
                  height: 87.h,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 7.h),
        
                        AppImage(path: 'camera.svg'),
                        SizedBox(height: 6.h),
        
                        Text(
                          'الملفات المسموح بيها :  JPEG , PNG\nالحد الاقصي : 5MB',
                          textAlign: TextAlign.center,
        
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 6.sp,
                            color: Color(0xff998C8C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              Text(
                'اسم المستخدم',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  color: Color(0xff0D1D1E),
                ),
              ),
              AppInput(label: 'thar22'),
              SizedBox(height: 3.h),
              Text(
                'البريد الإلكتروني',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  color: Color(0xff0D1D1E),
                ),
              ),
              AppInput(label: 'Tharad@gmail.com'),
              SizedBox(height: 3.h),
              Text(
                'كلمة المرور',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  color: Color(0xff0D1D1E),
                ),
              ),
              AppInput(isPassword: true, path: 'visibility_off.svg'),
              SizedBox(height: 3.h),
              Text(
                'تأكيد كلمة المرور',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  color: Color(0xff0D1D1E),
                ),
              ),
              AppInput(isPassword: true, path: 'visibility_off.svg'),
              SizedBox(height: 10.h),
              AppButton(
                text: 'إنشاء حساب جديد',
                onPressed: () {
                  goTo(OtpView());
                },
                width: 350.w,
              ),
              SizedBox(height: 6.h),
              Center(
                child: AppButtonNavigatorText(
                  text: 'لديك حساب؟',
                  textButton: ' تسجيل الدخول',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
