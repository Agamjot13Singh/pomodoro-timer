import 'package:flutter/material.dart';
import 'package:pomodoro/src/setting_page_detailed.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SettingPageDetailed()
          ],
        ),
      ),
    );
  }
}
