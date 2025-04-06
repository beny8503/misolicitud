// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

// ignore: must_be_immutable
class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF1f7f9c),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img/LogoSGestMan1.png'),
                const GFLoader(
                  type: GFLoaderType.ios,
                  size: GFSize.LARGE,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
