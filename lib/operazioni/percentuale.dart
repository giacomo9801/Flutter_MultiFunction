import 'package:flutter/material.dart';

class Percentuale extends StatefulWidget {
  const Percentuale({super.key});

  @override
  State createState() => _PercentualeState();
}

class _PercentualeState extends State<Percentuale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percentuale titolo'),
      ),
      body: const Center(
        child: Text('Percentuale'),
      ),
    );
  }
}
