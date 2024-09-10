import 'package:flutter/material.dart';
import 'package:coffee_bean/coffee_prefs.dart';
import 'package:coffee_bean/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Text("Hello, this is statelessWidget");
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Coffee",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
                // child: const Text("How I like my coffee...")
                child: const StyledBodyText("How I like my coffee...")
                ),
            Container(
                color: Colors.brown[100],
                padding: const EdgeInsets.all(20),
                child: const CoffeePrefs()),
            Expanded(
              child: Image.asset('assets/img/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
              ))
          ],
        ));
  }
}
