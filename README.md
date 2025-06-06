# flutter_icon_field

A custom Flutter widget that displays a circular progress indicator with a center image. Ideal for loading screens with branding or custom visuals.

![Flutter Version](https://img.shields.io/badge/flutter-%E2%89%A53.0.0-blue)
![Pub Version](https://img.shields.io/pub/v/flutter_icon_field.svg)
![License](https://img.shields.io/badge/license-MIT-green)

---

## 🚀 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_icon_field: ^1.0.0

```

## 🚀 How to Use

Import in your Dart code:

```
import 'package:flutter_icon_field/flutter_icon_field.dart';
```

## 💡 Features

- ✅ - Single icon (left or right) – with Icon or SvgPicture.
- ✅ - FloatLabel support (floating label).
- ✅ - IftaLabel support (fixed label over the field).
- ✅ - Enum IconFieldSize: small, normal, large.
- ✅ - Customizable border, padding, style, etc.

## ✨Demos

<img src="https://raw.githubusercontent.com/andersonmatte/flutter_icon_field_teste/refs/heads/master/assets/images/tela.png" width="500" height="844" alt="Flutter Icon Field Showcase" />

✅ Example

```dart
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Flutter Icon Field')),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 300,
        child: FlutterIconField(
          label: 'Password',
          labelType: FlutterIconFieldLabelType.float,
          iconPosition: FlutterIconFieldPosition.right,
          size: FlutterIconFieldSize.normal,
          icon: const Icon(Icons.lock, color: Colors.pinkAccent),
          obscureText: true,
        ),
      ),
    ),
  );
}
```

## 🤝 Contributing

Contributions are welcome! Open an issue or submit a pull request:
https://github.com/andersonmatte/flutter_icon_field

## 👨‍💻 Author

Anderson Matte
[GitHub](https://github.com/andersonmatte/) | [LinkedIn](https://www.linkedin.com/in/andersonmatte/)

## 📝 License

This project is licensed under the MIT License. See the LICENSE file for more details.
