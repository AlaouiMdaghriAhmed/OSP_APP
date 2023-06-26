import 'package:OSP/introduction_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stoma Patient Management"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Introduction to Stoma"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IntroductionPage()));

                // Navigate to the introduction page
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text("Stoma Care"),
              onPressed: () {
                // Navigate to the stoma care page
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text("Contact Health Specialists"),
              onPressed: () {
                // Navigate to the contact health specialists page
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text("Information"),
              onPressed: () {
                // Navigate to the information page
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text("Videos"),
              onPressed: () {
                // Navigate to the videos page
              },
            ),
          ],
        ),
      ),
    );
  }
}
