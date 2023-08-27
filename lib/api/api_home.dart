import 'package:flutter/material.dart';
import 'package:functions/api/api_service.dart';
import 'package:functions/api/model.dart';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State createState() => _ApiState();
}

class _ApiState extends State<Api> {
  late List<Crypto> _cryptoModel = []; // Inizializzato con una lista vuota
  bool _dataLoaded = false; // Aggiunto un flag per il caricamento dei dati

  @override
  void initState() {
    super.initState();
    if (!_dataLoaded) {
      // Carica i dati solo se non sono già stati caricati
      _getData();
      _dataLoaded = true;
    }
  }

  void _getData() async {
    try {
      final data = await ApiService().getCrypto();
      if (data != null) {
        setState(() {
          _cryptoModel = data;
        });
      } else {
        // Se il risultato è null, mostra un messaggio di errore
        _showErrorDialog('Impossibile ottenere i dati.');
      }
    } catch (e) {
      // In caso di errore durante la chiamata API, mostra un messaggio di errore
      _showErrorDialog('Errore durante il recupero dei dati: $e');
    }
  }

  void _showErrorDialog(String errorMessage) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Errore'),
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Chiudi il messaggio di errore
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api titolo'),
      ),
      body: Center(
        child: _cryptoModel.isEmpty
            ? const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  Text('Caricamento dati in corso...'),
                ],
              ) // Mostra un indicatore di caricamento se i dati non sono ancora stati ottenuti
            : ListView.builder(
                itemCount: _cryptoModel.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_cryptoModel[index].name),
                    subtitle: Text(_cryptoModel[index].symbol),
                  );
                },
              ),
      ),
    );
  }
}
