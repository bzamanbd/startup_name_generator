import 'package:flutter/material.dart';
import 'package:startup_name_generator/widgets/build_suggestions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
        centerTitle: true,
      ),
      body: const BuildSuggestions(),
    );
  }
}
