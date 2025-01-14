import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts package

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Color(0xFF35CC8C),
      //     automaticallyImplyLeading: false,
      //     title: Text(
      //       "Label",
      //       style: GoogleFonts.poppins(  // Replace 'lato' with a font you like from Google Fonts
      //         fontSize: 20.sp, // Use .sp for font sizes when using sizer
      //         fontWeight: FontWeight.bold,
      //         color: Colors.white
      //       ),
      //     ),
      //   ),
      //   body: SafeArea(
      //     child: Column(
      //       children: [
      //         // Add your content here
      //       ],
      //     ),
      //   ),
      );
    });
  }
}
