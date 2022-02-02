import 'package:flutter/material.dart';

class Period extends StatefulWidget {
  const Period({Key? key}) : super(key: key);
  @override
  _Period createState() => _Period();
}

class _Period extends State<Period> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(child: Text('Today', textAlign: TextAlign.center)),
        Expanded(child: Text('Week', textAlign: TextAlign.center)),
        Expanded(child: Text('Month', textAlign: TextAlign.center)),
      ],
    );
  }
}
