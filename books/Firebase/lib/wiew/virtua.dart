import 'package:flutter/material.dart';

class VirtuaScreen extends StatelessWidget {
  const VirtuaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SizedBox.expand(
        child: Center(child: Text("Virtua")),
      ),
    );
  }
}
