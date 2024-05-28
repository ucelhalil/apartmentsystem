enum MyAsset {
  apartment,
  login,
  lock,
  email,
  emailVerified,
  home,
  person,
  ;

  String get path => 'asset/icon/$name.png';
}
