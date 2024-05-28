import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, this.photoURL});

  final String? photoURL;

  @override
  Widget build(BuildContext context) {
    if (photoURL != null) {
      return CircleAvatar(
        foregroundImage: NetworkImage(photoURL!),
        radius: SizeType.mega.size,
      );
    }
    return WIconAsset(
      path: MyAsset.person.path,
      size: SizeType.hepta.size,
    );
  }
}
