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
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
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
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(
                                'assets/q2icon.png',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("LOREM IPSUM",
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 133, 133, 133),
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Text("LOREM IPSUM",
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 133, 133, 133),
                                )),
                          ],
                        )
                      ],
                    ),
                    Text(
                      'LOREM IPSUM',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Color.fromARGB(255, 133, 133, 133),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
