
part of 'home_view.dart';

class _HomeViewDrawer extends StatelessWidget {
  const _HomeViewDrawer();

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: _DrawerChild(),
    );
  }
}

class _DrawerChild extends StatelessWidget {
  const _DrawerChild();

  @override
  Widget build(BuildContext context) {
    return ColumnWithSpacing(
      children: [
          _DrawerSectionButton(
            path: MyAsset.home.path,
            title: homeSection,
            onPressed: (){},
          ),
      ],
    );
  }
}

class _DrawerSectionButton extends StatelessWidget {
  const _DrawerSectionButton(
    {
      required this.title,
      required this.onPressed,
      required this.path,
    }
  );

  final String title;
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4179214195.
  final VoidCallback onPressed;
  final String path;

  @override
  Widget build(BuildContext context) {
    return [
      WIconAsset(path: path),
      WText(text: title),
    ].row.withSizedBox(height: 40);
  }
}