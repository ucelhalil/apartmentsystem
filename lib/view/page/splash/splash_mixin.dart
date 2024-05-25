part of 'splash_view.dart';

mixin _SplashViewMixin on State<SplashView> {
  late Duration splashDuration;
  late Duration tweenDuration;
  late Duration logoDuration;
  late Duration textDuration;
  late Tween<double> tween;
  late double logoSize;
  late double textSize;
  late double textHeight;

  @override
  void initState() {
    super.initState();
    //
    splashDuration = const Duration(seconds: 3);
    tweenDuration = const Duration(seconds: 2);
    logoDuration = const Duration(milliseconds: 300);
    textDuration = const Duration(seconds: 1);
    tween = Tween<double>(begin: 0, end: 1);
    logoSize = 300;
    textSize = 200;
    textHeight = 80;

    Timer(const Duration(seconds: 5), () => goToAuth());
    //
  }

  Future<void> goToAuth() => context.pushNamedAndRemoveUntil(MyRoute.auth.name);

  @override
  void dispose() {
    super.dispose();
  }
}
