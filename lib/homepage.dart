import 'package:flutter/material.dart';
import 'details.dart';
import 'profile_info.dart';
import 'settings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to the Schedule App!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child:  Image.asset('assets/image.jpg',

                width: 250, // Genişlik
                height: 250,),
            ),

            SizedBox(height: 16),
            Center(
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8.0),
                ),

                child: Text(
                  'See your schedule for the week',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildDayItem(context, 'Monday'),
                  _buildDayItem(context, 'Tuesday'),
                  _buildDayItem(context, 'Wednesday'),
                  _buildDayItem(context, 'Thursday'),
                  _buildDayItem(context, 'Friday'),
                  _buildDayItem(context, 'Saturday'),
                  _buildDayItem(context, 'Sunday'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDayItem(BuildContext context, String day) {
    return ListTile(
      leading: Icon(Icons.calendar_today),
      title: Text(day),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(day: day),
          ),
        );
      },
    );
  }
}
