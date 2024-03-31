import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        appBarTheme: const AppBarTheme(color: Color(0xFFFFBA00)),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    debugPrint("initState called");
  }

  @override
  void dispose() {
    debugPrint("dispose called");
    super.dispose();
  }

  void incrementCount() {
    setState(() => count++);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build() invoked");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plus Page'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
                onPressed: () {
                  // TODO
                },
                child: const Text('Click me!')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => incrementCount(), child: const Icon(Icons.add)),
    );
  }
}
