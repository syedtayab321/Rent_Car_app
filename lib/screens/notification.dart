import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: <Widget>[
          NotificationTile(
            icon: Icons.notifications, // Replace with your icon
            title: 'New Notification',
            timestamp: '2 hours ago',
          ),
          NotificationTile(
            icon: Icons.notifications, // Replace with your icon
            title: 'Another Notification',
            timestamp: '1 day ago',
          ),
          // Add more NotificationTile widgets for your notifications
        ],
      ),
    );
  }
}
class NotificationTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String timestamp;

  NotificationTile({required this.icon, required this.title, required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blue, // Customize the icon color
      ),
      title: Text(title),
      subtitle: Text(timestamp),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          // Handle deleting the notification
        },
      ),
      onTap: () {
        // Handle tapping on the notification
      },
    );
  }
}
