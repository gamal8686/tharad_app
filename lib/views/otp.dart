import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tharad_app/core/components/app_Image.dart';
import 'package:tharad_app/core/components/app_buttom.dart';
import 'package:tharad_app/core/components/app_otv.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 100),
          AppImage(path: 'logen.png'),
          SizedBox(height: 116),
          Text(
            'رمز التحقق',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff1F0606),
            ),
          ),
          SizedBox(height: 8),
          Text(
            ' لاستكمال فتح حسابك ادخل رمز التحقق المرسل عبر البريد\nالإلكتروني',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff1F0606),
            ),
          ),
          SizedBox(height: 40),
          AppOtp(),
          SizedBox(height: 12),
          Row(
            children: [
              Text('00:59 Sec'),
              Spacer(),
              Text('لم يصلك رمز ؟ ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,

                ),),
              TextButton(
                onPressed: () {},
                child: Text(
                  'إعادة ارسال',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff42867B),
                  ),
                ),
              ),



            ],
          ),
          AppButtom(onPressed: () {}, text: 'المتابعة'),
        ],
      ),
    );
  }
}
