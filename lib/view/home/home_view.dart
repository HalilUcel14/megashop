import 'package:akilli_dukkan/mixin/theme/change_theme_mixin.dart';
import 'package:akilli_dukkan/widget/button/theme_button.dart';
import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';

part './body/homefield/home_body_homefield.dart';
part './child/home_appbar.dart';
part './child/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: AppKeys.home,
      appBar: _HomeAppBar(),
      body: const _HomeBody(),
    );
  }
}
