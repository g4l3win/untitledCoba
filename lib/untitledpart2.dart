import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "List view",
    home: Home(data: List<String>.generate(300, (i) => "Ini data ke $i")),
  ));
}

class Home extends StatelessWidget {
  // Deklarasi array
  final List<String> data;

  const Home({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.widgets),
            title: Text(data[index]),
          );
        },
      ),
    );
  }
}
