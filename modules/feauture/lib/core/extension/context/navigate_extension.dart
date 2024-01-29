import 'package:flutter/material.dart';

extension NavigatorExtension on BuildContext {
  Future<void> push(Widget child) async {
    await Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => child),
    );
  }

  void pop({dynamic result}) {
    return Navigator.pop(this, result);
  }

  bool get maybePop {
    return Navigator.canPop(this);
  }

  Future<Object?> pushName({required String route, Object? arguments}) async {
    return await Navigator.pushNamed(this, route);
  }

  void pushNamedAndRemoveUntil(String newRouteName, {Object? arguments}) async {
    await Navigator.pushNamedAndRemoveUntil(
        this, newRouteName, (route) => false);
  }
}
