enum MyAsset {
  apartment,
  login,
  lock,
  email,
  emailVerified,
  ;

  String get path => 'asset/icon/$name.png';
}
