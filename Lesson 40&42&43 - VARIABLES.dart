
LESSON - 40

*Example-1 without using variables

import 'package:flutter/material.dart';
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(42, 29, 154, 1),
            Color.fromRGBO(113, 209, 235, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}

*Example-2 same code with using variables

import 'package:flutter/material.dart';
var startAlignment = Alignment.topLeft;
var endAlingnment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const[
            Color.fromRGBO(42, 29, 154, 1),
            Color.fromRGBO(113, 209, 235, 1),
          ],
          begin: startAlignment,
          end: endAlingnment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}

*The use of variables can help prevent potential complexity.


--------------------------------------------------------------------------------


LESSON - 42 

Special Kinds Of Variables - final

*Using final instead of var is simply means that data container never receive a new value.
*Final variables protect projects from inadvertent changes, especially when more than one developer is working on it.

usages: final startAlignment = Alignment.topLeft;
        final endAlingnment = Alignment.bottomRight;


Special Kinds Of Variables - const

*It's almost the same as final because const also makes sure that you can't reassign those variables.
*When using const the value that's stored in here is a so-called compiled time constant, which means it's simply locked in at the point of time this code is compiled.
*If it is possible use it instead of final due to enhance performance.

usages: const startAlignment = Alignment.topLeft;
        const endAlingnment = Alignment.bottomRight;


--------------------------------------------------------------------------------


LESSON - 43

Instance Variables (Properties) & Configurable Widgets

Example - 1 

class StyledText extends GradientContainer {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      "Evet Efendim",
      style: TextStyle(
          color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold),
    );
  }
}

Example - 2

class StyledText extends GradientContainer {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold),
    );
  }
}


*In example-2 we can change the inside of text, so we can configure the custom widgets.