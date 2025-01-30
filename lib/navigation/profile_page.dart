import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 35),
          SizedBox(
            width: 150,
            height: 150,
            child: ClipOval(
              child: Image.asset(
                'assets/image 2(1).png', // Sesuaikan path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          // Username
          Text(
            'Mobile Flutter',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Sora',
            ),
          ),
          SizedBox(height: 5),
          // Email
          Text(
            'MobileKotlin@mail.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'Sora',
            ),
          ),
          SizedBox(height: 31),
          // Menu Items
          Expanded(
            child: Container(
              width: double.infinity, // Lebar penuh
              decoration: BoxDecoration(
                color: Colors.white, // Set to white
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), // Lengkungan atas kiri
                  topRight: Radius.circular(40), // Lengkungan atas kanan
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    offset: Offset(0, 4), // Shadow position
                    blurRadius: 10, // Shadow blur
                    spreadRadius: 2, // Shadow spread
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 44), // Jarak atas sebesar 44
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    // Settings & Preferences Section
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Settings & Preferences",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                          fontFamily: 'Sora',
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/account.png',
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Sora',
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/Vector.png',
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Sora',
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/Vector(1).png',
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        'Security',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Sora',
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 35),
                    // Support Section
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Support",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                          fontFamily: 'Sora',
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/Vector(2).png',
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        'About Plugin',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Sora',
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/Vector(3).png',
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        'Share Plugin app',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Sora',
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/tabler_logout.png',
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        'Log out',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Sora',
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}