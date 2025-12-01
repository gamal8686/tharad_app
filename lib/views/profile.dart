import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tharad_app/core/components/app_back.dart';
import 'package:tharad_app/core/components/app_image.dart';
import 'package:tharad_app/core/components/app_input.dart';
import 'package:tharad_app/core/logic/goto.dart';

import '../core/components/app_button.dart';
import '../core/logic/show_message.dart';
import 'create_account.dart' show  CreateAccountView;

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
        leading: AppBackButton(),
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
                  topEnd: Radius.circular(16.r),
                  topStart: Radius.circular(16.r),
                ),
              ),
              child: SafeArea(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        'اسم المستخدم',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInput(label: 'thar22'),
                      SizedBox(height: 4.h),
                      Text(
                        'البريد الإلكتروني',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInput(label: 'Tharad@gmail.com'),
                      SizedBox(height: 4.h),

                      GestureDetector(
                        onTap: () async {
                          XFile? responsive = await ImagePicker().pickImage(
                            source: ImageSource.gallery,
                          );
                          if (responsive != null) {
                            selectImage = responsive;
                            setState(() {});
                          }
                        },
                        child: selectImage != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: Image.file(
                                  File(selectImage!.path),
                                  width: 170.w,
                                  height: 90.h,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : DottedBorder(
                                color: Color(0xff42867B),
                                borderType: BorderType.Rect,
                                dashPattern: [20, 5],
                                strokeWidth: 2.w,
                                padding: EdgeInsets.all(16.w),

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
                                            fontSize: 6.sp,
                                            color: Color(0xff998C8C),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(height: 6.h),

                      Text(
                        'كلمة المرور القديمة',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInput(isPassword: true),
                      SizedBox(height: 6.h),

                      Text(
                        'كلمة المرور القديمة',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInput(isPassword: true),
                      SizedBox(height: 6.h),

                      Text(
                        'كلمة المرور القديمة',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: Color(0xff0D1D1E),
                        ),
                      ),
                      SizedBox(height: 4.h),

                      AppInput(isPassword: true),
                      SizedBox(height: 10.h),
                      Center(
                        child: AppButton(
                          width: 230.w,
                          onPressed: () {
                            showMessage('تم حفظ التغيرات بنجاح');
                          },
                          text: 'حفظ التغيرات',
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            goTo(CreateAccountView());
                          },
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
