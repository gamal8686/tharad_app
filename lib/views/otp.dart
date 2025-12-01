import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_app/core/components/app_button.dart';
import 'package:tharad_app/core/components/app_image.dart';
import 'package:tharad_app/core/components/app_otv.dart';
import 'package:tharad_app/core/logic/goto.dart';
import 'package:tharad_app/views/profile.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20.w),
        children: [
          SizedBox(height: 100.h),
          AppImage(path: 'login.png'),
          SizedBox(height: 116.h),
          Text(
            'رمز التحقق',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xff1F0606),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            ' لاستكمال فتح حسابك ادخل رمز التحقق المرسل عبر البريد\nالإلكتروني',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff1F0606),
            ),
          ),
          SizedBox(height: 40.h),
          AppOtp(),
          SizedBox(height: 12.h),
          Row(
            children: [
              Text('00:59 Sec'),
              Spacer(),
              Text(
                'لم يصلك رمز ؟ ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'إعادة ارسال',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff42867B),
                  ),
                ),
              ),
            ],
          ),
          AppButton(
            onPressed: () {
              goTo(ProfileViews());
            },
            text: 'المتابعة',
          ),
        ],
      ),
    );
  }
}
