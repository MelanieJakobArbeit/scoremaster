import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_theme.dart';

class UserIcon extends StatefulWidget {
  final double radiusImage;
  final double radiusBackground;
  const UserIcon({
    Key? key,
    required this.radiusImage,
    required this.radiusBackground,
  }) : super(key: key);
  @override
  _UserIcon createState() => _UserIcon();
}

class _UserIcon extends State<UserIcon> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.radiusBackground,
      backgroundColor: AppColors.accent,
      child: CircleAvatar(
        radius: widget.radiusImage,
        backgroundImage: const AssetImage('assets/mock/pictures/profile-1.jpg'),
      ),
    );
  }
}
