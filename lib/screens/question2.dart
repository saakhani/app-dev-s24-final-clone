import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Question2 extends StatefulWidget {
  Question2({Key? key}) : super(key: key);

  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 160),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius:
                BorderRadius.circular(40), // Set the border radius here
          ),
          child: Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/saakhani/appdev-s24-final/main/assets/q2bg.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.6),
            ),
            child: Card(
              // margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                color: Colors.white,
                                child: Image.network(
                                  'https://raw.githubusercontent.com/saakhani/appdev-s24-final/main/assets/q2icon.png',
                                  width: 60,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Analytic Data",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                                Text("Apple Officer",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 172, 172, 172),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.bookmark_added,
                          size: 24,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Chip(
                            padding: EdgeInsets.all(1.5),
                            side: BorderSide(width: 0, color: Colors.black),
                            label: Text("Full Time",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 172, 172, 172),
                                )),
                            backgroundColor: Color.fromARGB(244, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        SizedBox(width: 10),
                        Chip(
                            padding: EdgeInsets.all(1.5),
                            side: BorderSide(width: 0, color: Colors.black),
                            label: Text("Offline",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 172, 172, 172),
                                )),
                            backgroundColor: Color.fromARGB(244, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        SizedBox(width: 10),
                        Chip(
                            padding: EdgeInsets.all(1.5),
                            side: BorderSide(width: 0, color: Colors.black),
                            label: Text("1 Years EXP",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 172, 172, 172),
                                )),
                            backgroundColor: Color.fromARGB(244, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        "Discover how you can make an impact: see our areas of work, worldwide locations, and opportunities for students",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 172, 172, 172),
                        )),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$250/month",
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
    minimumSize: Size.zero, // Set this
    padding: EdgeInsets.zero, // and this
  ),
                          onPressed: () {},
                          child: Row(
                            
                            children: [
                                                            SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('1 week ago',
                                style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 0, 0, 0),
                                                            )),
                              ), // <-- Text
                              Icon(
                                // <-- Icon
                                Icons.arrow_circle_right_sharp,
                                color: Colors.black,
                                size: 40,
                                
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
