import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../core/components/app_image.dart';
import '../core/components/app_button.dart';
import '../core/components/app_formfield.dart';
import '../core/components/app_input.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            SizedBox(height: 120.h),
            AppImage(path: 'login.png', height: 60.h, width: 180.w),
            SizedBox(height: 100.h),
            Text(
              'تسجيل الدخول',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xff0D1D1E),
              ),
            ),
            SizedBox(height: 24.h),

            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'البريد الإلكتروني',
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0D1D1E),
                ),
                //textAlign: TextAlign.end,
              ),
            ),
            SizedBox(height: 8.h),

            AppFormField(
              filled: false,
              suffixIcon: false,
              label: 'Tharad@gmail.com',
            ),
            SizedBox(height: 12.h),

            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'كلمة المرور',
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0D1D1E),
                ),
                //textAlign: TextAlign.end,
              ),
            ),
            SizedBox(height: 6.h),

            AppInput(dropDown: false, isPassword: true),
            SizedBox(height: 8.h),
            Row(
              children: [
                Container(
                  height: 15.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F7F6),
                    border: BoxBorder.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
                SizedBox(width: 5.w),

                Text('تذكرني'),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text('هل نسيت كلمة المرور؟'),
                ),
              ],
            ),
            SizedBox(height: 42.h),
            AppButton(
              width: 350.w,
              text: 'تسجيل الدخول',
              onPressed: () {},
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('ليس لديك حساب؟ '),
                TextButton(
                    style: ButtonStyle(padding: WidgetStateProperty.all(EdgeInsets.zero)),
                    onPressed: () {}, child: Text(' إنشاء حساب جديد')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

