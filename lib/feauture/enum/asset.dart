enum MyAsset {
  apartment,
  login,
  lock,
  email,
  emailVerified,
  home,
  ;

  String get path => 'asset/icon/$name.png';
}
