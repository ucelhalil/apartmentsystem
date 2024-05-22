part of 'apartment_card.dart';

mixin ApartmentDesignMixin on StatelessWidget {
  double get width => 200;
  double get height => 250;
  double get titleHeight => 50;

  BoxDecoration boxDecoration(BuildContext context) => BoxDecoration(
        borderRadius: SizeType.ennea.size.radiusCircle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(
          color: context.colorScheme.onBackground,
          width: 1,
        ),
      );

  BoxDecoration titleDecoration(BuildContext context) => BoxDecoration(
        borderRadius: SizeType.ennea.size.radiusCircleOnlyBottom,
        border: Border.all(
          color: context.colorScheme.onBackground,
          width: 1,
        ),
      );
}
