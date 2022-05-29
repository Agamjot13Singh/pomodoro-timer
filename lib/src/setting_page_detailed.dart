import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodoro/widgets/settings_card_widget.dart';

class SettingPageDetailed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Settings',
            style:
                GoogleFonts.poppins(fontSize: 27, fontWeight: FontWeight.w400),
          ),
          SettingsCardWidget('Time for the Timer'),
          SettingsCardWidget('Color Theme'),
          SettingsCardWidget('Sign In'),
          SettingsCardWidget('Sign Up')
        ]);
  }
}
