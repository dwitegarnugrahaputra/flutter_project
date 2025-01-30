
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = 0.05 * screenWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              color: Color(0xFF6A6A6A),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          Positioned(
            top: 68,
            left: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA2A2A2),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Tegal, Indonesia',
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFD8D8D8),
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down,
                        color: Color(0xFFD8D8D8), size: iconSize),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              top: 135,
              left: 24,
              right: 24,
              child:
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search......',
                        hintStyle: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA2A2A2),
                        ),
                        filled: true,
                        fillColor: Color(0xFF2A2A2A),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/Search.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      style: GoogleFonts.sora(
                          fontSize: 14, color: Color(0xFFA2A2A2)),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/Icon.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )
          ),
          Positioned(
            top: 203,
            left: 23,
            right: 23,
            child: Container(
              width: 328,
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home/Frame 90.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            top: 372,
            left: 23,
            child: Column(
              children: [
                Text(
                  'Recomendation',
                  style: GoogleFonts.dmSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000)
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 413,
            left: 24,
            right: 24,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Container(
                  width: 156,
                  height: 238,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 12,
                            spreadRadius: 0,
                            offset: Offset(0, 0)
                        )
                      ]
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 156,
                  height: 238,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 12,
                            spreadRadius: 0,
                            offset: Offset(0, 0)
                        )
                      ]
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}