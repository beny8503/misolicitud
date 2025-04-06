import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solicitudes_multiempresa_apk/app/utils/ui.dart';

class GetDrawer extends StatelessWidget {
  const GetDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        drawerHeader(),
        ...drawerBody(context),
      ],
    );
  }

  SizedBox drawerHeader() {
    return const SizedBox(
      height: 150,
      child: DrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('img/01_4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          height: 0,
        ), //UserAccountDrawerHeader
      ),
    );
  }

  Iterable<Widget> drawerBody(BuildContext context) {
    return UI.listDrawer.map(
      (elem) => Column(
        children: [
          if (elem['not_children'])
            ListTile(
              leading: Icon(
                elem['icon'],
                color: const Color(0xFF1f7f9c),
              ),
              title: Text(
                elem['title'],
                style: const TextStyle(
                  color: Color(0xFF1f7f9c),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Get.offNamed(elem['route']);
              },
            )
          else ...[
            SizedBox(
              width: 300.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Text(
                  elem['title'],
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color(0xFF1f7f9c),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            ...elem['children'].map(
              (x) => ListTile(
                leading: Icon(
                  x['icon'],
                  color: const Color(0xFF1f7f9c),
                ),
                title: Text(
                  x['title'],
                  style: const TextStyle(
                    color: Color(0xFF1f7f9c),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  Get.offNamed(x['route']);
                },
              ),
            )
          ],
          Divider(
            color: Colors.grey.shade400, //color of divider
            height: 10, //width space of divider
            thickness: 1, //thickness of divier line
            indent: 0, //Spacing at the top of divider.
            endIndent: 0, //
          ),
        ],
      ),
    );
  }
}
