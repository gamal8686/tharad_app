import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tharad_app/core/components/app_Image.dart';
import 'package:tharad_app/core/components/app_back.dart';
import 'package:tharad_app/core/components/app_buttom.dart';
import 'package:tharad_app/core/components/app_input.dart';

import '../core/logic/show_masseg.dart';

class ProfileViews extends StatefulWidget {
  const ProfileViews({super.key});

  @override
  State<ProfileViews> createState() => _ProfileViewsState();
}

class _ProfileViewsState extends State<ProfileViews> {
  XFile? selectImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: AppBack(),
        title: Center(child: Text('الملف الشخصي')),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff5CC7A3), Color(0xff265355)],
              ),
            ),
          ),
          Positioned(
            top: 120,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(16.sp),
                  topStart: Radius.circular(16.sp),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        'اسم المستخدم',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInpot(labol: 'thar22'),
                      SizedBox(height: 4.h),
                      Text(
                        'البريد الإلكتروني',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInpot(labol: 'Tharad@gmail.com'),
                      SizedBox(height: 4.h),

                      GestureDetector(
                        onTap: () async {
                          XFile? respons = await ImagePicker().pickImage(
                            source: ImageSource.gallery,
                          );
                          if (respons != null) {
                            selectImage = respons;
                            setState(() {});

                          }
                        },
                        child: selectImage != null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            File(selectImage!.path),
                            width: 170.w,
                            height: 90.h,
                            fit: BoxFit.cover,
                          ),
                        )
                            : DottedBorder(
                                borderType: BorderType.Rect,
                                dashPattern: [20, 5],
                                strokeWidth: 2,
                                padding: EdgeInsets.all(16),

                                child: Container(
                                  width: 350.w,
                                  height: 50.h,
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
                                            fontSize: 6,
                                            color: Color(0xff998C8C),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(height: 6),

                      Text(
                        'كلمة المرور القديمة',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInpot(isPassword: true),
                      SizedBox(height: 6),

                      Text(
                        'كلمة المرور القديمة',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInpot(isPassword: true),
                      SizedBox(height: 6),

                      Text(
                        'كلمة المرور القديمة',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInpot(isPassword: true),
                      SizedBox(height: 10.h),
                      Center(
                        child: AppButtom(
                          width: 230.w,
                          onPressed: () {
                            showmassiage( 'تم حفظ التغيرات بنجاح');
                          },
                          text: 'حفظ التغيرات',
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('تسجيل الخروج'),
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
