import 'package:firstapp/application/example_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({super.key});

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hitung')),
      body: Center(
        child: Text(count.toString(), style: TextStyle(fontSize: 45)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        onPressed: () {
          count++;
          setState(() {});
          context.read<ExampleProvider>().setDataString(count.toString());
        },
      ),
    );
  }
}
