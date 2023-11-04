import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Jaguarftype extends StatefulWidget {
  Jaguarftype({Key? key}) : super(key: key);

  @override
  _JaguarftypeState createState() => _JaguarftypeState();
}

class _JaguarftypeState extends State<Jaguarftype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jaguar F-type'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/leopard.glb',
                ar: true,
                alt: 'A 3D model of Tesla Cybertruck',
                autoPlay: true,
                autoRotate: true,
                cameraControls: true,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
