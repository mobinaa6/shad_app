import 'package:flutter/material.dart';
import 'package:flutter_shad/screens/welcome_screen.dart';

void main() {
  runApp(Applcation());
}

class Applcation extends StatelessWidget {
  const Applcation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(
          color255: 255,
          color172: 172,
          color7: 7,
          color194: 194,
          colorr255: 255,
          colorr172: 0,
          colorr7: 21,
          colorr194: 24,
        ));
  }
}
