import 'package:flutter/material.dart';
import '../../../app_icon_size.dart';

class Rank extends StatefulWidget {
  final int rank;
  const Rank({
    Key? key,
    required this.rank,
  }) : super(key: key);
  @override
  _Rank createState() => _Rank();
}

class _Rank extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.rank.toString()),
        const Icon(
          Icons.arrow_drop_up,
          size: AppIconSize.xl,
        ),
      ],
    );
  }
}
