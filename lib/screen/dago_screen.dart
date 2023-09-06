import 'package:flutter/material.dart';
import 'package:flutter_application_9/screen/drawer_rocket_screen.dart';
import 'package:flutter_application_9/screen/drawer_surf_screen.dart';
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
              child: Column(
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assents/imagenes/groot.jpg'),
                      ),
                      border: Border.all(width: 2.0, color: Color(0xff45eee6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text('Goot', style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(
                MdiIcons.home,
                color: Color(0xff17807b),
              ),
              onTap: () => _navegar(context, 1),
            ),
            Divider(),
            ListTile(
              title: Text('Rocket'),
              leading: Icon(
                MdiIcons.rocket,
                color: Color(0xff17807b),
              ),
              onTap: () => _navegar(context, 2),
            ),
            Divider(),
            ListTile(
              title: Text('Surf'),
              leading: Icon(
                MdiIcons.surfing,
                color: Color(0xff17807b),
              ),
              onTap: () => _navegar(context, 3),
            ),
            Divider(),
            ListTile(
              title: Text('Cerrar'),
              leading: Icon(
                MdiIcons.close,
                color: Color(0xff17807b),
              ),
              onTap: () => Navigator.pop(context),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  void _navegar(BuildContext context, int pagina) {
    List<Widget> paginas = [
      DagoScreen(),
      DrawerRocketScreen(),
      DrawerSurfScreen()
    ];
    final pageRouteBuilder = PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (context, animation, animationTime) {
        return paginas[pagina - 1];
      },
      transitionsBuilder: (context, animation, animationTime, child) {
        return SlideTransition(
          position: Tween(
            begin: Offset(-1.0, 1.0),
            end: Offset(0.0, 0.0),
          ).animate(animation),
          child: child,
        );
      },
    );
    Navigator.push(context, pageRouteBuilder);
  }
}
