import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Legal extends StatefulWidget {
  @override
  State<Legal> createState() => _PlusState();
}

class _PlusState extends State<Legal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Mentions Légales",
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
                color: Color(0xFFf4896f),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "L'éditeur de l'application  ",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Docteur Manar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Réalisateur  de l'application  ",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Alaoui Mdaghri Ahmed",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Propriété Intellectuelle",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Tous les contenus présents sur l'application, notamment les textes, les images, les videos, les logos, les icônes, les sons et les données sont la propriété de l'éditeur ou font objet d'une autorisation d'utilisation. Toute reproduction, représentation, modification, publication, transmission, dénaturation, totale ou partielle de l'application ou son contenu, par quelque procédé que ce soit, et sur quelque support que ce soit, est interdite, sauf autorisation préalable de l'éditeur.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image:
                        DecorationImage(image: AssetImage("images/wtf.png"))),
              )
            ],
          ),
        ));
  }
}
