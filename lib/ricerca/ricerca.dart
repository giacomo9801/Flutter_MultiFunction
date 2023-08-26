import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

class Ricerca extends StatefulWidget {
  const Ricerca({super.key});

  @override
  State createState() => _RicercaState();
}

class _RicercaState extends State<Ricerca> {
  String valorecercato = '';
  final List<String> paesi = [
    'Bari',
    'Barletta',
    'Bologna',
    'Cagliari',
    'Catania',
    'Firenze',
    'Genova',
    'Milano',
    'Modena',
    'Napoli',
    'Palermo',
    'Parma',
    'Reggio Calabria',
    'Riccione',
    'Rimini',
    'Torino',
    'Trieste',
    'Venezia',
    'Verona',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ricerca',
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: EasySearchBar(
                title: const Text(
                  'Ricerca la tua città',
                  textAlign: TextAlign.center,
                ),
                onSearch: (value) => setState(() => valorecercato = value),
                suggestions: paesi),
            body: Center(child: Text('Hai selezionato: $valorecercato'))));
  }
}
