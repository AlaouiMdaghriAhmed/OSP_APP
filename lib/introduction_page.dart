import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction to Stoma"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What is a stoma?",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
                "A stoma is a surgically created opening in the abdominal wall that allows waste to be eliminated from the body."),
            SizedBox(height: 16.0),
            Text(
                "Stomas are often created for patients with bowel or bladder conditions and can be temporary or permanent. The waste is collected in a bag attached to the stoma."),
            SizedBox(height: 16.0),
            Text(
                "It is important for stoma patients to properly care for their stoma to prevent complications and maintain their health."),
          ],
        ),
      ),
    );
  }
}
