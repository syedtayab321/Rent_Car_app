import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:rent_car_app/screens/login.dart';
import 'package:rent_car_app/screens/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Signup extends StatefulWidget
{
  String tile='';
  Signup(this.tile);
  @override
  State<StatefulWidget> createState() => _Signup_page();
}

class _Signup_page extends State<Signup> {

  GlobalKey<FormState> _global=new GlobalKey();
  TextEditingController control1=TextEditingController();
  TextEditingController control2=TextEditingController();
  TextEditingController control3=TextEditingController();

  void _singup(BuildContext context)
  async {
    String email = control1.text.trim();
     String password=control2.text.trim();
    String confirmpassword=control3.text.trim();

    bool _logout = false;
    if (_global.currentState!.validate()) {
      control1.clear();
      control2.clear();
      control3.clear();
      try{
        UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword
          (
          email: email,
          password: password,
        );
      } on FirebaseAuthException catch(ex){
        AlertDialog _alert = AlertDialog(
          title: Text("ERORR"),
          content: Text(ex.code.toString()),
          actions: [
           TextButton(
               onPressed: (){
                 Navigator.pop(context);
               },
               child: Text("OK"),
           )
          ],
        );

        await showDialog(
            context: context,
            builder: (context) {
              return _alert;
            }
        );
      }
    } //singup function close
  }//current state function close here

  //validation
  String? validatename(String value)
  {
    if(value.isEmpty)
    {
      return "invalid username";
    }else
    {
      return null;
    }
  }
  String? validatepassword(String value)
  {
    if(value.isEmpty)
    {
      return "invalid password";
    }else
    {
      return null;
    }
  }
  String? validatecpassword(String value)
  {
    // ignore: unrelated_type_equality_checks
    if(value.isEmpty)
    {
      return "Password Does'nt Match";
    }else
    {
      return null;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.tile,style: TextStyle(color:Colors.white),),
        backgroundColor: Colors.blue,
        actions: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context)=>Login("Login"),
                )
                );
              },
              child: Text("Already Have an Account? Login")
          ),
        ],
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Image(
                    image: AssetImage('resources/logos/WV.png'),
                  ),
                  radius: 60,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _global,
                    child:Column(
                      children: [
                        TextFormField(
                          controller: control1,
                          validator: (value) =>validatename(value!),
                          keyboardType: TextInputType.text,
                          autocorrect: false,
                          decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Email here",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(80),
                              )
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 20,
                        ),
                        TextFormField(
                          controller: control2,
                          validator: (value) =>validatepassword(value!),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                              labelText: "password",
                              hintText: "Password  here",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              )
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          controller: control3,
                          validator: (value) =>validatecpassword(value!),
                          keyboardType: TextInputType.text,
                          autocorrect: false,
                          obscureText: true,
                          enableSuggestions: false,
                          decoration: InputDecoration(
                              labelText: "Confirm Passowrd",
                              hintText: "Confirm Your password  here",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton.icon
                  (
                  onPressed: ()=>_singup(context),
                  icon: Icon(Icons.login,color: Colors.white,),
                  label: Text("Sing-Up",style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
