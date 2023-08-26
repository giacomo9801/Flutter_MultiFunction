import 'package:flutter/material.dart';

class Calcolatrice extends StatefulWidget {
  const Calcolatrice({super.key});

  @override
  State createState() => _CalcolatriceState();
}

class _CalcolatriceState extends State<Calcolatrice> {
  String inputnumerico = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcolatrice'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('7'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('8'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('9'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('+'),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('4'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('5'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('6'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('-'),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('1'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('2'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('3'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('*'),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('0'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('C'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('='),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('/'),
                      ),
                    ),
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}
