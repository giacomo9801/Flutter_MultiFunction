import 'package:flutter/material.dart';

class Calcolatrice extends StatefulWidget {
  const Calcolatrice({super.key});

  @override
  State createState() => _CalcolatriceState();
}

class _CalcolatriceState extends State<Calcolatrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcolatrice'),
      ),
      body: const Center(
        child: Text('Operazioni'),
      ),
    );
  }
}
