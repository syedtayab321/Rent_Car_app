import 'package:flutter/material.dart';
import 'package:rent_car_app/screens/main_screen.dart';
class Login extends StatelessWidget {
  String tile='';
  Login(this.tile);

  TextEditingController _controller1=TextEditingController();
  TextEditingController _controller2=TextEditingController();
  GlobalKey<FormState> _globalKey=new GlobalKey();
  void _login( BuildContext context)
  {
    String username = _controller1.text;
    String password = _controller2.text;

    if(_globalKey.currentState!.validate())
    {
      _controller1.clear();
      _controller2.clear();
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => main_screen(),
          )
      );
    }
  }
  String? validateusername(String value)
  {
    if (value.isEmpty) {
      return 'Name is required';
    }
    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
      return 'Please enter a valid name';
    }
    return null;
  }
  String? validatepassword(String value)
  {
    if (value.isEmpty) {
      return "password is required";
    } else {
      return null;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tile,style: TextStyle(color:Colors.white),),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Image.asset('resources/logos/TOYOTA.png',width: 100,height: 100,fit: BoxFit.contain),
                  radius: 60,
                ),
                SizedBox(height: 20,),
                Form(
                  key: _globalKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _controller1,
                        validator: (value) => validateusername(value!),
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        decoration: InputDecoration(
                            labelText: "NAME",
                            hintText: "Name here",
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
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        obscureText: true,
                        enableSuggestions: false,
                        controller: _controller2,
                        validator: (value) => validatepassword(value!),
                        decoration: InputDecoration(
                            labelText: "password",
                            hintText: "Password  here",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(80),
                            )
                        ),
                      ),
                      TextButton(
                          onPressed:(){},
                          child: Text("FORGOT PASSWORD",style: TextStyle(color: Colors.blue , fontStyle: FontStyle.italic,),)
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20,),
                ElevatedButton.icon
                  (
                  onPressed: () => _login(context),
                  icon: Icon(Icons.login),
                  label: Text("login"),
                ),
              ],
            ),
          )
      ),
    );
  }
}
