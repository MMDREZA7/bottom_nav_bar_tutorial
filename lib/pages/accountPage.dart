import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Account',
        style: GoogleFonts.dmSerifDisplay(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.cyan[900],
        ),
      ),
    );
  }
}
