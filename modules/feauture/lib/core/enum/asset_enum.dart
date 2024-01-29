enum IconEnum {
  store,
  light,
  dark,
  ;

  String get png => "assets/icon/$name.png";
}

enum ImageEnum {
  home,
  ;

  String get jpg => "assets/image/$name.jpg";
  String get png => "assets/image/$name.png";
}
