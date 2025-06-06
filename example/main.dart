import 'package:flutter/material.dart';
import 'package:flutter_icon_field/flutter_icon_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterIconField Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('FlutterIconField Showcase')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('LabelType: ifta | Icon left | Size: small'),
              const FlutterIconField(
                label: 'Usuário',
                labelType: FlutterIconFieldLabelType.ifta,
                iconPosition: FlutterIconFieldPosition.left,
                size: FlutterIconFieldSize.small,
                icon: Icon(Icons.person),
                hintText: 'Digite seu nome',
              ),
              const SizedBox(height: 16),
              const Text('LabelType: float | Icon right | Size: normal'),
              const FlutterIconField(
                label: 'Senha',
                labelType: FlutterIconFieldLabelType.float,
                iconPosition: FlutterIconFieldPosition.right,
                size: FlutterIconFieldSize.normal,
                icon: Icon(Icons.lock),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              const Text('LabelType: none | Icon left | Size: large'),
              const FlutterIconField(
                iconPosition: FlutterIconFieldPosition.left,
                size: FlutterIconFieldSize.large,
                icon: Icon(Icons.email),
                hintText: 'Email',
              ),
              const SizedBox(height: 16),
              const Text('LabelType: ifta | Icon right | SVG icon'),
              FlutterIconField(
                label: 'Busca',
                labelType: FlutterIconFieldLabelType.ifta,
                iconPosition: FlutterIconFieldPosition.right,
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 20,
                ),
                hintText: 'Buscar algo...',
              ),
              const SizedBox(height: 16),
              const Text('LabelType: none | Icon left | obscureText true'),
              const FlutterIconField(
                icon: Icon(Icons.visibility_off),
                obscureText: true,
                hintText: 'Campo secreto',
                iconPosition: FlutterIconFieldPosition.left,
              ),
              const SizedBox(height: 16),
              const Text('LabelType: float | Icon left | KeyboardType: number'),
              const FlutterIconField(
                label: 'Idade',
                labelType: FlutterIconFieldLabelType.float,
                iconPosition: FlutterIconFieldPosition.left,
                icon: Icon(Icons.numbers),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
