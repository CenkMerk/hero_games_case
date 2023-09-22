import 'package:flutter/material.dart';
import 'package:hero_games_case/screens/page_1_screen.dart';
import 'package:hero_games_case/screens/page_2_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Games Case'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            navigatorButton(context, "Page 1", const Page1Screen()),
            const SizedBox(
              width: 10.0,
            ),
            navigatorButton(context, "Page 2", const Page2Screen()),
          ],
        ),
      ),
    );
  }
}

ElevatedButton navigatorButton(
    BuildContext context, String text, Widget screen) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ),
      );
    },
    child: Text(text),
  );
}
