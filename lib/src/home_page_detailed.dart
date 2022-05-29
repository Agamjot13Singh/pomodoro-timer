import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodoro/src/center_widget.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class HomePageDetail extends StatelessWidget {
  var time = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Pomodoro Timer',
            style:
                GoogleFonts.poppins(fontSize: 27, fontWeight: FontWeight.w300),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:

                //  Text Field Started
                TextField(
              keyboardType: TextInputType.text,
              autofocus: false,
              style: const TextStyle(fontSize: 22.0, color: Color(0xffffffff)),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xfff6B4CA6),
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 10.0, top: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xfff6b4ca6)),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xfff6b4ca6)),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  hintText: 'What are you upto?',
                  hintStyle:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                  suffixIcon: const Icon(
                    Icons.edit,
                    size: 25,
                    color: Colors.white,
                  )),
            ),
          ),
          const CenterWidget()
        ],
      ),
    );
  }
}
