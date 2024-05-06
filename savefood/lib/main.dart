import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaveFood',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SaveFood'),
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
  int men = 0; // min: 2000 | max: 3000
  int women = 0; // min: 1600 | max: 2400
  int children = 0; // min: 1000 | 1400

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "How many people are coming?",
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        men = men > 0 ? men - 1 : men;
                      });
                    },
                    child: Text("-")),
                Text("            $men              "),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        men += 1;
                      });
                    },
                    child: Text("+"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        women = women > 0 ? women - 1 : women;
                      });
                    },
                    child: Text("-")),
                Text("            $women              "),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        women += 1;
                      });
                    },
                    child: Text("+"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        children = children > 0 ? children - 1 : children;
                      });
                    },
                    child: Text("-")),
                Text("            $children              "),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        children += 1;
                      });
                    },
                    child: Text("+"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
