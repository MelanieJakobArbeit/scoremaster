import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormAddUserPage extends StatefulWidget {
  const FormAddUserPage({Key? key}) : super(key: key);
  @override
  _FormAddUserPage createState() => _FormAddUserPage();
}

class _FormAddUserPage extends State<FormAddUserPage> {
  static const double spaceBetweenVertical = 20;
  static const double padding = 10;
  static const double buttonSpace = 10;

  final _formKey = GlobalKey<FormState>();

  String? validateIsEmpty(value) {
    if (value.isEmpty) {
      return 'Bitte geben sie etwas ein.';
    }

    return null;
  }

  void resetForm() {
    _formKey.currentState?.reset();
  }

  void saveForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Füge einen neuen Score hinzu.'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(
            top: spaceBetweenVertical,
            left: padding,
            right: padding,
          ),
          child: Column(
            children: <Widget>[
              Wrap(
                runSpacing: spaceBetweenVertical,
                children: <Widget>[
                  TextFormField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => validateIsEmpty(value),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: 'Vorname',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => validateIsEmpty(value),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: 'Nachname',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => validateIsEmpty(value),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Score',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => validateIsEmpty(value),
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () => resetForm(),
                        child: const Text('Löschen'),
                      ),
                      const SizedBox(width: buttonSpace),
                      ElevatedButton(
                        onPressed: () => saveForm(),
                        child: const Text('Speichern'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
