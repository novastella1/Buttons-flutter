import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//All credits to https://www.youtube.com/watch?v=-JcLOPx55mI by Mitch Koko

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Icon(
              Icons.android,
              size: 100,
              color: darkMode ? Colors.white : Colors.black,
            ),
            decoration: BoxDecoration(
                color: darkMode ? Colors.grey[850] : Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  ///////////////////////////////////////////
                  ///
                  ///To adjust the shadows
                  ///
                  ///for darkmode adjust the ones next to ?
                  ///
                  ///for lightmode adjust the ones next to :
                  ///
                  ///All credits to https://www.youtube.com/watch?v=-JcLOPx55mI
                  ///by Mitch Koko
                  ///////////////////////////////////////////
                  BoxShadow(
                    color: darkMode
                        ? Color.fromARGB(255, 20, 20, 20)
                        : Color.fromARGB(255, 161, 161, 161),
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: darkMode
                        ? Color.fromARGB(255, 71, 71, 71)
                        : Color.fromARGB(255, 255, 255, 255),
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ]),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF272727)),
                ),
                onPressed: () {
                  setState(() {
                    darkMode = true;
                  });
                },
                child: const Text(
                  'Dark',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  setState(() {
                    darkMode = false;
                  });
                },
                child: const Text(
                  'Light',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
