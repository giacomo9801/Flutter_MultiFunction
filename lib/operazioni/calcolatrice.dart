import 'package:flutter/material.dart';

class Calcolatrice extends StatefulWidget {
  const Calcolatrice({Key? key});

  @override
  State createState() => _CalcolatriceState();
}

class _CalcolatriceState extends State<Calcolatrice> {
  String inputTesto = '';
  double risultato = 0.0; // Variabile per memorizzare il risultato temporaneo
  String operatoreCorrente =
      ''; // Variabile per memorizzare l'operatore corrente

  // Funzione per gestire il clic su un numero
  void numeroPremuto(String numero) {
    setState(() {
      inputTesto += numero;
    });
  }

  // Funzione per gestire il clic su un operatore (+, -, *, /)
  void operatorePremuto(String operatore) {
    setState(() {
      if (inputTesto.isNotEmpty) {
        // Se c'è del testo nell'input, converte il testo in un numero e lo aggiunge al risultato
        final double numero = double.parse(inputTesto);
        if (operatoreCorrente == '+') {
          risultato += numero;
        } else if (operatoreCorrente == '-') {
          risultato -= numero;
        } else if (operatoreCorrente == '*') {
          risultato *= numero;
        } else if (operatoreCorrente == '/') {
          if (numero != 0) {
            risultato /= numero;
          } else {
            // Gestione divisione per zero
            risultato = 0.0;
          }
        } else {
          // Se è la prima operazione, imposta il risultato iniziale
          risultato = numero;
        }
      }
      inputTesto = '';
      operatoreCorrente = operatore;
    });
  }

  // Funzione per gestire il clic su "="
  void ugualePremuto() {
    setState(() {
      if (inputTesto.isNotEmpty) {
        // Se c'è del testo nell'input, converte il testo in un numero e lo aggiunge al risultato
        final double numero = double.parse(inputTesto);
        if (operatoreCorrente == '+') {
          risultato += numero;
        } else if (operatoreCorrente == '-') {
          risultato -= numero;
        } else if (operatoreCorrente == '*') {
          risultato *= numero;
        } else if (operatoreCorrente == '/') {
          if (numero != 0) {
            risultato /= numero;
          } else {
            // Gestione divisione per zero
            risultato = 0.0;
          }
        } else if (operatoreCorrente.isEmpty) {
          // Se è la prima operazione, imposta il risultato iniziale
          risultato = numero;
        }
      }
      inputTesto = risultato.toString();
      operatoreCorrente = '';
    });
  }

  // Funzione per gestire il clic su "C" (Cancella)
  void cancellaPremuto() {
    setState(() {
      inputTesto = '';
      risultato = 0.0;
      operatoreCorrente = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcolatrice'),
        backgroundColor: Colors.amber[800],
      ),
      body: Container(
        color: Colors.amber[800],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, right: 30, left: 30),
              child: TextField(
                controller: TextEditingController(text: inputTesto),
                textAlign: TextAlign.center,
                enabled: false,
                decoration: const InputDecoration(
                  hintText: "Numero",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.numbers),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('7'),
                    child: const Text('7'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('8'),
                    child: const Text('8'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('9'),
                    child: const Text('9'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => operatorePremuto('+'),
                    child: const Text('+'),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('4'),
                    child: const Text('4'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('5'),
                    child: const Text('5'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('6'),
                    child: const Text('6'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => operatorePremuto('-'),
                    child: const Text('-'),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('1'),
                    child: const Text('1'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('2'),
                    child: const Text('2'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('3'),
                    child: const Text('3'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => operatorePremuto('*'),
                    child: const Text('*'),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => numeroPremuto('0'),
                    child: const Text('0'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: cancellaPremuto,
                    child: const Text('C'),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: ugualePremuto,
                    child: const Text('='),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => operatorePremuto('/'),
                    child: const Text('/'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
