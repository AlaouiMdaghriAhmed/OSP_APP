import 'package:OSP/pattopat.dart';
import 'package:OSP/stoma_intro.dart';
import 'package:OSP/all_videos.dart';

import 'package:OSP/video_screen.dart';
import 'package:OSP/video_screen1.dart';
import 'package:OSP/video_screen2.dart';

import 'package:OSP/stoma_care.dart';

import 'package:OSP/Legal.dart';
import 'package:OSP/Plusplus.dart';

import 'package:OSP/nutrition.dart';
import 'package:OSP/t%C3%A9moin.dart';
import 'package:OSP/psych.dart';
import 'package:OSP/plus.dart';

import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  List catNames = [
    "شنو هيا الخنشة",
    "رعاية ذاتية",
    "تغذية",
    "شهادة",
    "الدعم النفسي",
    "سؤال جواب ",
    "من مريض إلى مريض",
    "إشعار قانوني",
    "أكثر",
  ];
  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFFEEFF41),
    Color(0xFF00BCD4),
    Color(0xFFFF5252),
    Color(0xFFE91E63),
    Color(0XFFB2FF59),
    Color(0xffb74093),
    Color(0xff03fce3),
    Color(0xfffc03f4),
  ];
  List<Icon> catIcons = [
    Icon(
      Icons.medical_information,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.food_bank,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.perm_phone_msg_sharp,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.psychology,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.question_answer,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.people,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.chrome_reader_mode_outlined,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.info_outline,
      color: Colors.white,
      size: 30,
    ),
  ];
  List imgList = [
    Image.asset('images/1.png'),
    Image.asset('images/2.png'),
    Image.asset('images/3.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFFf4896f),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "مرحبا",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Recherche ...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 5, right: 5),
            child: Column(children: [
              GridView.builder(
                itemCount: catNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (index == 0)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StomaIntro(),
                            ));
                      if (index == 1)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllVideos(),
                            ));
                      if (index == 2)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Nutrition(),
                            ));
                      if (index == 3)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Temoin(),
                            ));
                      if (index == 4)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Psych(),
                            ));
                      if (index == 5)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Plus(),
                            ));
                      if (index == 6)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pattopat(),
                            ));
                      if (index == 7)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Legal(),
                            ));
                      if (index == 8)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Plusplus(),
                            ));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "مقاطع فيديو",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "إظهار الكل",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFf4896f),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllVideos(),
                          ));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                itemCount: imgList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:
                      (MediaQuery.of(context).size.height - 60 - 25) /
                          (4 * 240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (index == 0)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoScreen(),
                            ));
                      if (index == 1)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoScreen1(),
                            ));
                      if (index == 2)
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoScreen2(),
                            ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF5F3FF),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: imgList[index],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
