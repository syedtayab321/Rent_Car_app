import 'dart:async';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget
{
  State<StatefulWidget> createState()=>_screens();
}
class _screens extends State<splash_screen>
{
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
        context,
        '/Signup',
      );
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 30,),
              Image(
                  image: AssetImage('resources/images/image1.jpg'),width: 200,height: 300,fit: BoxFit.contain,
              ),
              SizedBox(height: 30,),
              Text(
                "WELCOME TO MY APPLICATION",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          ),
        ),
    );
  }
}
