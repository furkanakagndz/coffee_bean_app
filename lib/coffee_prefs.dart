import 'package:flutter/material.dart';
import 'package:coffee_bean/styled_body_text.dart';
import 'package:coffee_bean/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    // print("strength is increased");
    setState(() {
      strength < 5 ? strength++ : strength = 1;
    });
  }

  void increaseSugar() {
    // print("sugar is increased");
    setState(() {
      sugars < 5 ? sugars++ : sugars = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText('Strenth: '),
            // Text('$strength'),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            // const SizedBox(width: 50)
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child: const Text('+'))
            // FilledButton(
            //     style: FilledButton.styleFrom(
            //         backgroundColor: Colors.brown,
            //         foregroundColor: Colors.white),
            //     onPressed: increaseStrength,
            //     child: const Text('+'))
            // const Text('+'),
          ],
        ),
        Row(
          children: [
            const StyledBodyText('Sugar: '),
            // Text('$sugars'),
            if (sugars == 0) const StyledBodyText("No sugars.."),

            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            // const SizedBox(width: 50)
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseSugar, child: const Text('+'))
            // FilledButton(
            //     style: FilledButton.styleFrom(
            //         backgroundColor: Colors.brown,
            //         foregroundColor: Colors.white),
            //     onPressed: increaseSugar,
            //     child: const Text('+'))
            // const Text('+'),
          ],
        )
      ],
    );
  }
}
