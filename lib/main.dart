import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 44, 197, 218),
        ),
      ),
      home: const MyHomePage(title: 'My Homework'),
    );
  }
}

Container buildWidget(String path) {
  return Container(
    width: 200,
    height: 200,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey),
    ),
    child: Image.network(path, height: 200, width: 200, fit: BoxFit.cover),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        toolbarTextStyle: TextStyle(fontSize: 1.0),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,

            child: Text(
              'Beautiful Images',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          buildWidget(
            'https://fastly.picsum.photos/id/179/2048/1365.jpg?hmac=GJyDjrvfBfjPfJPqSBd2pX6sjvsGbG10d21blr5bTS8',
          ),

          SizedBox(height: 20),
          buildWidget(
            'https://fastly.picsum.photos/id/200/1920/1280.jpg?hmac=-eKjMC8-UrbLMpy1A4OWrK0feVPB3Ka5KNOGibQzpRU',
          ),

          Align(
            alignment: Alignment.topCenter,

            child: Text(
              'My text',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 20),

          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color.fromARGB(255, 7, 224, 36)),
              gradient: LinearGradient(colors: [Colors.yellow, Colors.cyan]),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-5, 5),
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Image.asset(
              'assets/jpg/Dog.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  //  Widget example() {
  //    return SizedBox();
  //  }
}
