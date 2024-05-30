import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirestoreUser.of.fireUser,
      builder: (context, snapshot) {
        // ------------------------
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const ConnectionWaiting();
        }
        // ------------------------
        if (snapshot.hasError) {
          return SnapshotHasErrorWidget(error: snapshot.error.toString());
        }
        // ------------------------
        if (snapshot.hasData && snapshot.data == null) {
          return SnapshotHasNotDataWidget(error: snapshot.error.toString());
        }
        // ------------------------
        return _ProfileCard(user: snapshot.data!);
      },
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({required this.user});

  final FireUser user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: [
        [
          UserAvatar(photoURL: user.photoURL),
          // ------------------------
          WText(text: 'UserName: ${user.displayName}'),
          WText(text: 'Email: ${user.email}'),
          // ------------------------
        ].centerColumn,
        [
          WText(text: 'Plan: ${user.plans}'),
          WText(text: 'Apartment: ${user.apartment}'),
          WText(text: 'Flat: ${user.flat}'),
          WText(text: 'End Date: ${user.planDate}'),
        ].centerColumn,

        // ------------------------
      ].column.withSizedBox(
            height: SizeType.zeta.size,
            width: SizeType.teta.size,
          ),
    );
  }
}
