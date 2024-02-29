import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String day;

  DetailsPage({required this.day});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text(
          'Tasks for $day',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
