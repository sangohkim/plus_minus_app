import 'package:flutter/material.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key});

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  int count = 0;

  void decrementCount() {
    setState(() => count++);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("minus build invoked");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minus Page'),
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => decrementCount(), child: const Icon(Icons.remove)),
    );
  }
}