import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../core/components/app_Image.dart';
import '../core/components/app_buttom.dart';
import '../core/components/app_formfield.dart';
import '../core/components/app_input.dart';

class LogenView extends StatelessWidget {
  const LogenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 120),
              AppImage(path: 'logen.png', height: 60, width: 180),
              SizedBox(height: 100),
              Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D1D1E),
                ),
              ),
              SizedBox(height: 24),

              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'البريد الإلكتروني',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D1D1E),
                  ),
                  //textAlign: TextAlign.end,
                ),
              ),
              SizedBox(height: 8),

              Appformfild(
                filled: false,
                suffixIcon: false,
                labol: 'Tharad@gmail.com',
              ),
              SizedBox(height: 12),

              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'كلمة المرور',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D1D1E),
                  ),
                  //textAlign: TextAlign.end,
                ),
              ),
              SizedBox(height: 6),

              AppInpot(dropDown: false, isPassword: true),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F7F6),
                      border: BoxBorder.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width: 5),

                  Text('تذكرني'),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text('هل نسيت كلمة المرور؟'),
                  ),
                ],
              ),
              SizedBox(height: 42),
              AppButtom(
                width: 350,
                text: 'تسجيل الدخول',
                onPressed: () {},
              ),
              SizedBox(height: 12),
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
      ),
    );
  }
}

