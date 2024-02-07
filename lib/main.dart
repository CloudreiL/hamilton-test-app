import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamilton Musical',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hamilton App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            toolbarHeight: 100,
            title: Center(
              child: Image.asset(
                'assets/images/hamilton_logo.png',
                height: 350,
                width: 350,
              ),
            )
        ),
      body: Center(
          child: Column(
            children: [Container(
              width: 350,
              height: 100,
              margin: const EdgeInsets.only(top:30),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/gold_back.png',
                  ),
                  fit: BoxFit.fill,
                ),

              ),
              child: const Text('CAST',
                  textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontFamily: 'CormorantSC',
                  shadows: [
                    Shadow(
                      color: Colors.black,
                    blurRadius: 10.0,
                    )
                  ]

                ),
              ),
            )],
          )
      )
    );
  }
}
