import 'package:flutter/material.dart';
import 'package:functions/operazioni/calcolatrice.dart';

import 'package:functions/ricerca/ricerca.dart';
import 'package:functions/api/api_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multifunzione',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Multifunzione'),
      routes: <String, WidgetBuilder>{
        '../lib/operazioni/calcolatrice': (BuildContext context) =>
            const Calcolatrice(),
        '../lib/ricerca/ricerca': (BuildContext context) => const Ricerca(),
        '../lib/api/api_home': (BuildContext context) => const Api(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 650),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.calculate_outlined),
            icon: Icon(Icons.calculate),
            label: 'Operazioni',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.search_outlined),
            icon: Icon(Icons.search),
            label: 'Ricerca',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.api_outlined),
            icon: Icon(Icons.api),
            label: 'Api',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                // clipBehavior is necessary because, without it, the InkWell's animation
                // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
                // This comes with a small performance cost, and you should not set [clipBehavior]
                // unless you need it.
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onDoubleTap: () =>
                      debugPrint('Double Tap sulla card Calcolatrice'),
                  splashColor: Colors.blue.withAlpha(30),
                  hoverColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.of(context).push(_createRouteCalcolatrice());
                  },
                  child: const SizedBox(
                    width: 200,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Calcolatrice',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                            )),
                        Icon(Icons.calculate),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Ricerca(),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Api(),
        ),
      ][currentPageIndex],
    );
  }

  Route _createRouteCalcolatrice() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Calcolatrice(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
