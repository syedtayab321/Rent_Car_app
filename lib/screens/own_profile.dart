import 'package:flutter/material.dart';
class own_details extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<own_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add widgets to display user profile, name, ID, and rent car details here
            UserProfileWidget(),
            UserNameWidget(),
            UserIDWidget(),
            RentCarDetailsWidget(),
          ],
        ),
      ),
    );
  }
}
class UserNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace 'Your Name' with your actual name or user data
    String userName = 'Your Name';

    return ListTile(
      leading: Icon(Icons.person),
      title: Text('Name'),
      subtitle: Text(userName),
    );
  }
}
class UserProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace 'Your Name' with your actual name or user data
    return  Image(
           image: AssetImage('resources/images/image3.jpg'),width: 200,height: 200,fit: BoxFit.contain,
    );
  }
}
class UserIDWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace 'Your Name' with your actual name or user data
    String userName = 'Your Name';

    return ListTile(
      leading: Icon(Icons.person),
      title: Text('Name'),
      subtitle: Text(userName),
    );
  }
}
class  RentCarDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace 'Your Name' with your actual name or user data
    String userName = 'Your Name';

    return ListTile(
      leading: Icon(Icons.person),
      title: Text('Name'),
      subtitle: Text(userName),
    );
  }
}

