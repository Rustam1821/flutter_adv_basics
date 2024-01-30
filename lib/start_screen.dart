import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  static const grayishColor = Color.fromARGB(255, 237, 223, 252);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz_logo.png',
          width: 300,
          color: grayishColor,
        ),
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset('assets/images/quiz_logo.png', width: 300),
        // ),
        const SizedBox(
          height: 80,
        ),
        Text('Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: grayishColor,
              fontSize: 24,
            )),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.deepPurple),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: grayishColor,
          ),
          label: const Text(
            'Start quiz',
            style: TextStyle(fontSize: 12, color: grayishColor),
          ),
        ),
      ]),
    );
  }
}
