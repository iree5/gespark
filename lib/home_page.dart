import 'package:flutter/material.dart';
import 'package:gespark/registration_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void onPressed1() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegistrationPage(title: 'Inscription'),
      ),
    );
  }

  void onPressed2() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegistrationPage(title: 'Enregistrement'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Bienvenue sur GESPARK',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/moto.png',
              height: 400, // adapte la taille selon ton besoin
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.all(5),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed1,
                  child: const Text('Inscrivez-vous'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed2,
                  child: const Text('Enregistrez votre engin'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
