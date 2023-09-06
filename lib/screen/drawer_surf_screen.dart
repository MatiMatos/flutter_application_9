import 'package:flutter/material.dart';

class DrawerSurfScreen extends StatefulWidget {
  const DrawerSurfScreen({super.key});

  @override
  State<DrawerSurfScreen> createState() => _DrawerSurfScreenState();
}

class _DrawerSurfScreenState extends State<DrawerSurfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Surf"),
      ),
      body: Text("Surf"),
    );
  }
}
