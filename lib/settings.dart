import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _selectedNotificationInterval = 'daily'; // default selected interval

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Theme Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: false, // change this value based on the current theme
                onChanged: (value) {
                  // implement theme change logic here
                },
              ),
            ),
            Divider(),
            SizedBox(height: 16),
            Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: Text('Enable Notifications'),
              trailing: Switch(
                value: false, // change this value based on notification preference
                onChanged: (value) {
                  // implement notification toggle logic here
                },
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedNotificationInterval,
              items: ['daily', 'weekly', 'monthly'].map((String interval) {
                return DropdownMenuItem<String>(
                  value: interval,
                  child: Text(interval),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedNotificationInterval = value!;
                });
              },
            ),


          ],
        ),
      ),
    );
  }
}
