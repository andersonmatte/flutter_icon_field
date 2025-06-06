import 'package:flutter/material.dart';

import 'enums/flutter_icon_field_label_style.dart';
import 'enums/flutter_icon_field_position.dart';
import 'enums/flutter_icon_field_size.dart';

/// A text input field with an embedded icon, inspired by PrimeNG's IconField component.
///
/// Um campo de texto com um ícone embutido, inspirado no componente IconField do PrimeNG.
class FlutterIconField extends StatelessWidget {
  /// Field label (used with `float` or `ifta` label types).
  ///
  /// Rótulo do campo (usado com os modos de label `float` ou `ifta`).
  final String? label;

  /// Label type: none, float, or IFTA.
  ///
  /// Tipo de rótulo: nenhum, flutuante ou IFTA.
  final FlutterIconFieldLabelType labelType;

  /// Size of the field: small, normal or large.
  ///
  /// Tamanho do campo: pequeno, normal ou grande.
  final FlutterIconFieldSize size;

  /// Icon position: left or right.
  ///
  /// Posição do ícone: esquerda ou direita.
  final FlutterIconFieldPosition iconPosition;

  /// Icon widget displayed next to the input field.
  ///
  /// Widget do ícone exibido junto ao campo de entrada.
  final Widget icon;

  /// Text controller for the input field.
  ///
  /// Controlador de texto para o campo.
  final TextEditingController? controller;

  /// Hint text (placeholder).
  ///
  /// Texto de dica (placeholder).
  final String? hintText;

  /// Whether the field should obscure text (useful for passwords).
  ///
  /// Define se o campo deve ocultar o texto (útil para senhas).
  final bool obscureText;

  /// Keyboard type (e.g., text, email, number).
  ///
  /// Tipo do teclado (por exemplo: texto, email, número).
  final TextInputType? keyboardType;

  /// Callback triggered when the input value changes.
  ///
  /// Função chamada ao alterar o valor do campo.
  final void Function(String)? onChanged;

  /// Creates an input field with an icon, supporting multiple customization options.
  ///
  /// Cria um campo de entrada com ícone, com várias opções de customização.
  const FlutterIconField({
    super.key,
    required this.icon,
    this.label,
    this.labelType = FlutterIconFieldLabelType.none,
    this.size = FlutterIconFieldSize.normal,
    this.iconPosition = FlutterIconFieldPosition.right,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
  });

  /// Returns font size based on the selected size enum.
  ///
  /// Retorna o tamanho da fonte com base no enum de tamanho.
  double getFontSize() {
    switch (size) {
      case FlutterIconFieldSize.small:
        return 12.0;
      case FlutterIconFieldSize.normal:
        return 16.0;
      case FlutterIconFieldSize.large:
        return 20.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLeft = iconPosition == FlutterIconFieldPosition.left;

    final field = TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: TextStyle(fontSize: getFontSize()),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelType == FlutterIconFieldLabelType.float ? label : null,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: const OutlineInputBorder(),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        prefixIcon: isLeft
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: icon,
              )
            : null,
        suffixIcon: !isLeft
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: icon,
              )
            : null,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelType == FlutterIconFieldLabelType.ifta && label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child:
                Text(label!, style: TextStyle(fontSize: getFontSize() * 0.8)),
          ),
        field,
      ],
    );
  }
}
