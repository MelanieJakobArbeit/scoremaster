import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_theme.dart';

class Period extends StatefulWidget {
  const Period({Key? key}) : super(key: key);
  @override
  _Period createState() => _Period();
}

class _Period extends State<Period> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: const Text('Today'),
              style: TextButton.styleFrom(
                primary: AppColors.textColor,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: const Text('Week'),
              style: TextButton.styleFrom(
                primary: AppColors.textColor,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: const Text('Month'),
              style: TextButton.styleFrom(
                primary: AppColors.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
