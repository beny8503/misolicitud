import 'package:flutter/material.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/dashboard/body.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/general/drawer.dart';
import 'package:solicitudes_multiempresa_apk/app/ui/components/dashboard/header.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 1,
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 25,
              child: Image(
                image: AssetImage('img/logo.png'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text('SGestMan MiSolicitud')
          ],
        ),
        backgroundColor: const Color(0xFF1f7f9c),
        foregroundColor: Colors.white,
        elevation: 0.00,
      ),
      drawer: const Drawer(
        child: GetDrawer(),
      ),
      body: Container(
        color: const Color(0xFFEEEEEE),
        child: Column(
          children: [
            Header(),
            Body(),
          ],
        ),
      ),
    );
  }
}
