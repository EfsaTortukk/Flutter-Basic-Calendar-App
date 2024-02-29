import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class ProfilePage extends StatelessWidget {
  final Faker _faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name: ${_faker.person.name()}'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: ${_faker.internet.email()}'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Location: ${_faker.address.city()}, ${_faker.address.country()}'),
            ),
          ],
        ),
      ),
    );
  }
}
