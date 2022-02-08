import 'package:flutter/material.dart';
import '../../../app_icon_size.dart';

class Rank extends StatefulWidget {
  const Rank({Key? key}) : super(key: key);
  @override
  _Rank createState() => _Rank();
}

class _Rank extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('1'),
        Icon(
          Icons.arrow_drop_up,
          size: AppIconSize.xl,
        ),
      ],
    );
  }
}
