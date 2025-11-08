import 'package:flutter/material.dart';
import 'package:tharad_app/views/create_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color primary = Color(0xff265355);
    final MaterialColor primarySwatch =
    MaterialColor(primary.value, <int, Color>{
      50: primary.withOpacity(.1),
      100: primary.withOpacity(.2),
      200: primary.withOpacity(.3),
      300: primary.withOpacity(.4),
      400: primary.withOpacity(.5),
      500: primary,
      600: primary.withOpacity(.7),
      700: primary.withOpacity(.8),
      800: primary.withOpacity(.9),
      900: primary,
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tharad',
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal')
          )),
          inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Color(0xffF4F7F6),

              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(8),

              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8))
          ),
          filledButtonTheme: FilledButtonThemeData(
              style: FilledButton.styleFrom(shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(8),),

                  backgroundColor: Color(0xff265355),
                  fixedSize: Size.fromHeight(50),
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Tajawal',
                  )
              )),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatch),
          fontFamily: 'Tajawal',
          scaffoldBackgroundColor: Colors.white),
builder: (context, child) => Directionality(textDirection: TextDirection.rtl, child: child!),

      home:CreateAccountview(),
    );
  }
}
