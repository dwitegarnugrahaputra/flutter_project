import 'package:finaal_project/navigation/home_page.dart';
import 'package:finaal_project/navigation/navigasi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
          ),
          Positioned(
              child: Container(
                child: Image.asset(
                    'assets/Image Onboardingggggggggg.png'),
              )),
          Positioned(
              top: 408,
              right: 0,
              left: 0,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                        'assets/Shadow Container.png'),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 24, top: 24, right: 24, bottom: 54),
                      child: Column(
                        children: [
                          Text(
                            "Cultivating Health, \nOne Plant at \na Time!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sora(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Welcome to a world where plant health meets technology, for a greener tomorrow.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            height: 56,
                            width: 327,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Navigasi()),
                                        (route) => false);
                              },
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
