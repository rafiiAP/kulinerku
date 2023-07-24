import 'package:flutter/material.dart';
import 'package:kulinerku/components/widgets/custom_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: W.textTitle('Helo Rafii'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
