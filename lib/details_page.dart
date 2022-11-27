import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.data, super.key});

  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
