import 'package:flutter/material.dart';

class DrawerRocketScreen extends StatefulWidget {
  const DrawerRocketScreen({super.key});

  @override
  State<DrawerRocketScreen> createState() => _DrawerRocketScreenState();
}

class _DrawerRocketScreenState extends State<DrawerRocketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rocket"),
      ),
      body: Text("Rocket"),
    );
  }
}
