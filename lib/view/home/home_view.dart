import 'package:feauture/feauture.dart';
import 'package:flutter/material.dart';
import 'package:widget/text/index.dart';
import 'package:widget/widget.dart';

import '../../app_text/home/home_text.dart';
import '../../core/enum/opacity.dart';
import '../../core/enum/view_height.dart';
import '../../mixin/theme/change_theme_mixin.dart';
import '../../widget/button/theme_button.dart';

part './body/homefield/home_body_homefield.dart';
part './child/home_appbar.dart';
part './child/home_body.dart';
part 'body/feauture/home_body_feauture.dart';

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
