part of 'home_view.dart';

class _HomeFloatingButton extends StatelessWidget {
  const _HomeFloatingButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.customShowDialog(
          dialog: CustomDialog(
            child: const ApartmentCreator(),
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
