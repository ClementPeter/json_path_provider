import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({required this.data, super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comment Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
