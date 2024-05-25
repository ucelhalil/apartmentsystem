import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthUser.of.getUserData(),
      builder: (context, snapshot) {
        return SnapshotViewController<FireUser>(
          snapshot: snapshot,
          child: Card(
            child: [
              [
                CircleAvatar(
                  foregroundImage: NetworkImage(snapshot.data!.photoURL ?? ''),
                  radius: SizeType.mega.size,
                ),
                // ------------------------
                WText(text: 'UserName: ${snapshot.data!.displayName}'),
                WText(text: 'Email: ${snapshot.data!.email}'),
                // ------------------------
              ].centerColumn,
              [
                WText(text: 'Plan: ${snapshot.data?.plans}'),
                WText(text: 'Apartment: ${snapshot.data?.apartment}'),
                WText(text: 'Flat: ${snapshot.data?.flat}'),
                WText(text: 'End Date: ${snapshot.data?.planDate}'),
              ].centerColumn,
              // ------------------------
            ].column.withSizedBox(
                  height: SizeType.zeta.size,
                  width: SizeType.teta.size,
                ),
          ),
        );
      },
    );
  }
}
