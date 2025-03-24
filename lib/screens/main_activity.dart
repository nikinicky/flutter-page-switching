import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'activity1.dart';
import 'activity2.dart';
import 'activity3.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  MainActivityState createState() => MainActivityState();
}

class MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page Switching",
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: Color(0xFFD5F0C1),
      ),
      body: Container(
        color: Color(0xFFF9F7C9),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 24),
                width: MediaQuery.of(context).size.width * 0.90,
                height: 175,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFAAD9BB),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text(
                  "Main Activity",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 48,
                      color: Colors.white,
                  ),
                )
              )
            ),

            // Activity 1
            Container(
              margin: EdgeInsets.only(top: 48),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Activity1()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF80BCBD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  child: Text(
                    "Activity 1",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  )
                ),
              ),
            ),

            // Activity 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 64,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Activity2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF80BCBD),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                    child: Text(
                      "Activity 2",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    )
                ),
              ),
            ),

            // Activity 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 64,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Activity3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF80BCBD),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                    child: Text(
                      "Activity 3",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}