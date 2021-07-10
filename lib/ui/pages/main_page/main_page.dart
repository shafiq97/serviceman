import 'package:delta_services/ui/pages/main_page/components/content.dart';
import 'package:delta_services/ui/pages/main_page/components/sidemenu.dart';
import 'package:delta_services/ui/pages/main_page/components/submenu.dart';
import 'package:flutter/material.dart';
import 'package:layoutr/common_layout.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.commonLayout.value(
        tinyHardware: () => SubMenu(),
        phone: () => SubMenu(),
        tablet: () => Row(
          children: [
            Expanded(key: Key('submeu'), flex: 2, child: SubMenu()),
            Expanded(key: Key('content'), flex: 3, child: Content()),
          ],
        ),
        desktop: () => Row(
          children: [
            Expanded(key: Key('sidemenu'), flex: 3, child: SideMenu()),
            Expanded(key: Key('submeu'), flex: 4, child: SubMenu()),
            Expanded(key: Key('content'), flex: 8, child: Content()),
          ],
        ),
      ),
    );
  }
}
