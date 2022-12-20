import 'package:delta_services/assets/colors.gen.dart';
import 'package:delta_services/ui/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:layoutr/common_layout.dart';
import 'package:spaces/spaces.dart' as sp;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonLayoutWidget(
      resolverBuilder: (constraints) => CommonLayout(
        constraints.maxWidth,
        desktop: 850,
        tablet: 520,
      ),
      child: NeumorphicApp(
        title: 'Main',
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
        builder: (context, child) {
          return sp.Spacing(
            dataBuilder: (ctx) => sp.SpacingData.generate(
              context.commonLayout.value(
                tinyHardware: () => 9.0,
                phone: () => 14.0,
                tablet: () => 16.0,
                desktop: () => 20.0,
              ),
            ),
            child: child!,
          );
        },
        color: ColorName.darkBgColor,
        theme: NeumorphicThemeData(
          baseColor: ColorName.lightBgColor,
          accentColor: ColorName.darkBgColor,
          depth: 3.0,
        ),
      ),
    );
  }
}
