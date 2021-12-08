import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodoro/widgets/settings_dropdown_widget.dart';

class SettingsCardWidget extends StatelessWidget {
  String titleCard;
  SettingsCardWidget(this.titleCard);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 65,
        width: 350,
        decoration: BoxDecoration(
            color: Color(0xfff2D2C3F), borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(titleCard,
                style: GoogleFonts.poppins(
                    color: Color(
                      0xfff6F6F7E,
                    ),
                    fontSize: 20)),
            SettingsDropDownWidget()
          ],
        ),
      ),
    );
  }
}
