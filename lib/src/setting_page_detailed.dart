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
            'Add new timer',
            style:
                GoogleFonts.overpass(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          SettingsCardWidget('Focus Time'),
          SettingsCardWidget('Short break'),
          SettingsCardWidget('Long break'),
          SettingsCardWidget('Sections')
        ]);
  }
}
