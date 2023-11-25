import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings',
        style: GoogleFonts.dmSerifDisplay(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.brown[900],
        ),
      ),
    );
  }
}
