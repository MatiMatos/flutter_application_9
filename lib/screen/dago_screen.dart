import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class DagoScreen extends StatefulWidget {
  const DagoScreen({super.key});

  @override
  State<DagoScreen> createState() => _DagoScreenState();
}

class _DagoScreenState extends State<DagoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daguitos"),
        backgroundColor: Color(0xff45eee6),
      ),
      body: Center(
        child: Text('Home Dago'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              height: 80,
              width: 100,
              child: Image(image: AssetImage('assents/imagenes/groot.jpg')),
            )),
            ListTile(
              title: Text('Home'),
              leading: Icon(
                MdiIcons.home,
                color: Color(0xff17807b),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('rocket'),
              leading: Icon(
                MdiIcons.rocket,
                color: Color(0xff17807b),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('surf'),
              leading: Icon(
                MdiIcons.surfing,
                color: Color(0xff17807b),
              ),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
