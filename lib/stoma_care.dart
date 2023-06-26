import 'package:flutter/material.dart';

class StomaCare extends StatefulWidget {
  @override
  State<StomaCare> createState() => _StomaCareState();
}

class _StomaCareState extends State<StomaCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Stoma Care",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0xFF674AEF),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.height,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("images/1.png"),
                ),
              ),
            ),
            SizedBox(
              width: 30,
              height: 10,
            ),
            Text(
              "How to care for you stoma",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                '''When an illness involves the removal of a section of your bowel or bladder, your surgeon may need to form a hole in your abdomen called a stoma (sometimes referred to as an 'ostomy'). The stoma opening is used to remove bodily waste — faeces ('poo') or urine, in the case of a urostomy — into a small collection bag.

Your stoma will look moist and pinkish-red and will protrude slightly from a circular hole in your abdomen. Your stoma may be swollen to begin with, but usually reduces in size over time. You shouldn't feel anything in the stoma, and it shouldn’t be painful. Over time, bodily waste and gas will pass out through the stoma instead of your anus or urethra.

Living with a stoma can seem daunting at first — but you’re not alone. Around 46,000 Australians live with a stoma and, with help and support, many maintain a normal quality of life. While it may take time, there are specialist healthcare professionals who can help with the adjustment process.'''),
          ],
        ),
      ),
    );
  }
}
