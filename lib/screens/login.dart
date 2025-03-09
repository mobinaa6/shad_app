import 'package:flutter/material.dart';
import 'package:flutter_shad/main_scareen.dart';

import 'package:particles_flutter/particles_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 61, 38, 145),
            Color.fromARGB(255, 13, 179, 156),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularParticle(
                height: 800,
                width: 392,
                awayRadius: 230,
                numberOfParticles: 400,
                speedOfParticles: 1,
                maxParticleSize: 5,
                particleColor: Color.fromARGB(255, 22, 184, 224),
                awayAnimationDuration: Duration(seconds: 2),
                awayAnimationCurve: Curves.linearToEaseOut,
                isRandomColor: false,
                isRandSize: true,
                connectDots: true,
                hoverColor: Colors.grey,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.white60,
              ),
              Positioned(
                bottom: 450,
                child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Image.asset(
                    'images/shad.png',
                    height: 70,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    labelText: 'شماره مویایل(09xxxxxxxxx)',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 450,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff43cea2), minimumSize: Size(200, 40)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return MainScreen();
                      },
                    ));
                  },
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
