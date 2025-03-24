import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main_activity.dart';

class Activity1 extends StatelessWidget {
  const Activity1({super.key});

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
                      "Activity 1",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    )
                )
            ),

            Container(
              margin: EdgeInsets.only(top: 48),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 64,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => MainActivity()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF80BCBD),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                    child: Text(
                      "Back to Main Activity",
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