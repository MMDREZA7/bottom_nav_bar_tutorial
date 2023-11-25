import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Messages',
        style: GoogleFonts.dmSerifDisplay(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.pink[900],
        ),
      ),
    );
  }
}
