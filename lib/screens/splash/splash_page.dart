import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                clipBehavior: Clip.none, 
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF003366), 
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      border: Border.all(
                        color: Colors.white, 
                        width: 2,
                      ),
                    ),
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0, bottom: 30),
                      child: Text(
                        'Дорогие пользователи,\nмы рады приветствовать Вас\nв маркетплейсе «Samruk Kazyna Store».',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        border: Border.all(
                          color: Colors.white, 
                          width: 3,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[900],
                        radius: 50,
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100), 
             Image.asset(
              'assets/images/logo.png',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(175, 151, 120, 1),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
