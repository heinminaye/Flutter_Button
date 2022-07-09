import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String text = '';

  void _addText() {
    setState(() {
      text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  _addText();
                  text = "Text Button got clicked!!!";
                },
                child: const Text('Text Button')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  _addText();
                  text = "Elevated Button got clicked!!!";
                },
                child: const Text("Elevated Button")),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  _addText();
                  text = "Outline Button got clicked!!!";
                },
                child: const Text('Outline Button')),
            GestureDetector(
              onTap: () {
                _addText();
                text = "Image got clicked!!!";
              },
              child: Image.asset(
                'images/IT.jpg',
                width: 200,
                height: 200,
              ),
            ),
            InkWell(
              onTap: () {
                _addText();
                text = "Image got clicked with Ink clicked!!!";
              },
              child: Image.asset(
                'images/IT.jpg',
                width: 200,
                height: 200,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addText();
          text = "Floating Button got clicked!!!";
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
