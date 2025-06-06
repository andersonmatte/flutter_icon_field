import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_icon_field/flutter_icon_field.dart';
import 'package:flutter_icon_field/src/enums/flutter_icon_field_label_style.dart';
import 'package:flutter_icon_field/src/enums/flutter_icon_field_position.dart';
import 'package:flutter_icon_field/src/enums/flutter_icon_field_size.dart';

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
              FlutterIconField(
                label: 'Usuário',
                labelType: FlutterIconFieldLabelType.ifta,
                iconPosition: FlutterIconFieldPosition.left,
                size: FlutterIconFieldSize.small,
                icon: const Icon(Icons.person),
                hintText: 'Digite seu nome',
              ),
              const SizedBox(height: 16),
              const Text('LabelType: float | Icon right | Size: normal'),
              FlutterIconField(
                label: 'Senha',
                labelType: FlutterIconFieldLabelType.float,
                iconPosition: FlutterIconFieldPosition.right,
                size: FlutterIconFieldSize.normal,
                icon: const Icon(Icons.lock),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              const Text('LabelType: none | Icon left | Size: large'),
              FlutterIconField(
                iconPosition: FlutterIconFieldPosition.left,
                size: FlutterIconFieldSize.large,
                icon: const Icon(Icons.email),
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
              FlutterIconField(
                icon: const Icon(Icons.visibility_off),
                obscureText: true,
                hintText: 'Campo secreto',
                iconPosition: FlutterIconFieldPosition.left,
              ),
              const SizedBox(height: 16),
              const Text('LabelType: float | Icon left | KeyboardType: number'),
              FlutterIconField(
                label: 'Idade',
                labelType: FlutterIconFieldLabelType.float,
                iconPosition: FlutterIconFieldPosition.left,
                icon: const Icon(Icons.numbers),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
