import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/firebase_options.dart';
import 'package:rent_car_app/screens/Signup.dart';
import 'package:rent_car_app/screens/brand_details.dart';
import 'package:rent_car_app/screens/brands.dart';
import 'package:rent_car_app/screens/login.dart';
import 'package:rent_car_app/screens/main_screen.dart';
import 'package:rent_car_app/screens/cars.dart';
import 'package:rent_car_app/screens/cars_details.dart';
import 'package:rent_car_app/screens/notification.dart';
import 'package:rent_car_app/splash_screen.dart';
import 'package:rent_car_app/screens/own_profile.dart';
void main() {

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>splash_screen(),
        '/Signup':(context)=>Signup("Welcome"),
        '/main':(context)=>main_screen(),
        '/cars':(context)=>cars(),
        '/login':(context)=>Login("LOGIN HERE"),
        '/cars_details':(context)=>ReviewSummaryScreen(),
        '/brands':(context)=>brands(),
        '/brand_details':(context)=>brand_details(),
        '/own_profile':(context)=>own_details(),
        '/notification':(context)=>NotificationScreen(),
      },
    );
  }
}