// Suggested code may be subject to a license. Learn more: ~LicenseLog:1312731308.
part of 'home_view.dart';

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: kToolbarHeight,
    );
    // return const Row(
      
    //   children: [
    //     _LeadingWidget(),
    //     Spacer(),
    //     _TitleWidget(),
    //     Spacer(),
    //     _ActionWidget(),
    //   ],
    // );
  }
  
  @override
  Size get preferredSize => const Size(double.infinity,kToolbarHeight);
}

class _LeadingWidget extends StatelessWidget {
  const _LeadingWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: kToolbarHeight,
      color: Colors.amber,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget();

  @override
  Widget build(BuildContext context) {
    return const WText(text: 'Title Text');
  }
}

class _ActionWidget extends StatelessWidget {
  const _ActionWidget();

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.settings);
  }
}