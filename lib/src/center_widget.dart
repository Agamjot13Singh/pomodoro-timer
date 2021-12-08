import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
// import 'package:pomodoro/home_page.dart';
// import 'package:pomodoro/src/home_page_detailed.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountDownController _controller = CountDownController();
    int _duration = 1500;
    // Function start = _controller.widget.start();

    return Column(children: [
      CircularCountDownTimer(
        duration: _duration,

        initialDuration: 0,

        controller: _controller,
        width: 210,

        height: MediaQuery.of(context).size.height / 2,

        ringColor: Colors.grey[300]!,

        ringGradient: null,

        fillColor: Color(0xfff4643B8),

        fillGradient: null,

        backgroundColor: Color(0xfff232330),

        backgroundGradient: null,

        strokeWidth: 20.0,

        strokeCap: StrokeCap.round,

        textStyle: TextStyle(
            fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),

        textFormat: CountdownTextFormat.MM_SS,

        // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
        isReverse: true,

        // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
        isReverseAnimation: true,

        // Handles visibility of the Countdown Text.
        isTimerTextShown: true,

        // Handles the timer start.
        autoStart: false,

        // This Callback will execute when the Countdown Starts.
        onStart: () {
          // Here, do whatever you want
          print('Countdown Started');
        },

        onComplete: () {
          print('Countdown Ended');
        },
      ),
      GestureDetector(
        onTap: () {
          _controller.start();
        },
        child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xfff674FFF),
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xfff674fff).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Icon(
              Icons.pause,
              color: Colors.white,
              size: 40,
            )),
      ),
    ]);
  }

  _button({required String title, VoidCallback? onPressed}) {
    return Expanded(
        child: ElevatedButton(
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed,
    ));
  }
}
 

      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     SizedBox(
      //       width: 30,
      //     ),
      //     _button(title: "Start", onPressed: () => _controller.start()),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     _button(title: "Pause", onPressed: () => _controller.pause()),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     _button(title: "Resume", onPressed: () => _controller.resume()),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     _button(
      //         title: "Restart",
      //         onPressed: () => _controller.restart(duration: _duration))