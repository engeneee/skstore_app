import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добро пожаловать'),
        centerTitle: true,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 40.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логин',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person, color:  Color.fromRGBO(175, 151, 120, 1),), 
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock, color:  Color.fromRGBO(175, 151, 120, 1),), 
                suffix: GestureDetector(
                  onTap: () {
                  },

                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Radio(
                  value: true,
                  groupValue: true, 
                  fillColor: MaterialStateColor.resolveWith((states) =>  const Color.fromRGBO(175, 151, 120, 1)),
                  onChanged: (value) {
                  },
                ),
                const Text('Запомнить меня'),
              ],
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(13, 71, 161, 1), 
              ),
              child: const Text('Войти'),
            ),
          ],
        ),
      ),
    );
  }
}