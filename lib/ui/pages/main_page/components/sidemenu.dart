import 'package:delta_services/assets/assets.gen.dart';
import 'package:delta_services/assets/colors.gen.dart';
import 'package:delta_services/assets/sakwah.icons.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'package:layoutr/common_layout.dart';
import 'package:spaces/spaces.dart' as sp;

class SideMenu extends StatefulWidget {
  SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  late final ExpandableController _servicesExpandableController;
  late final ExpandableController _repairMaintenanceExpandableController;
  late final ExpandableController _interiorRequestExpandableController;

  @override
  void initState() {
    super.initState();
    _servicesExpandableController = ExpandableController();
    _repairMaintenanceExpandableController = ExpandableController();
    _interiorRequestExpandableController = ExpandableController();
  }

  @override
  void dispose() {
    _servicesExpandableController.dispose();
    _repairMaintenanceExpandableController.dispose();
    _interiorRequestExpandableController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final spacing = sp.Spacing.of(context);
    final layout = context.commonLayout;

    return Container(
      color: ColorName.lightBgColor,
      child: SafeArea(
        child: sp.SpacedColumn.normal(
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: spacing.insets.all.semiSmall,
          children: [
            sp.Space.extraSmall(),
            sp.SpacedRow.normal(
              crossAxisAlignment: CrossAxisAlignment.center,
              padding: spacing.insets.all.semiSmall,
              children: [
                Assets.image.deltaHomeslogo.image(
                  color: ColorName.primary.withOpacity(0.7),
                  fit: BoxFit.scaleDown,
                  height: 24.0,
                ),
                Spacer(),
                if (layout.isTabletOrSmaller)
                  NeumorphicButton(
                    child: NeumorphicIcon(
                      SakwahIcons.cancel,
                      size: 20.0,
                      style: NeumorphicStyle(
                        color: ColorName.greyColor.withOpacity(0.6),
                        shadowDarkColor: ColorName.darkBgColor,
                        shadowLightColor: ColorName.lightBgColor,
                        shape: NeumorphicShape.concave,
                      ),
                    ),
                    style: NeumorphicStyle(color: ColorName.lightBgColor),
                    padding: EdgeInsets.symmetric(
                      horizontal: spacing.spaces.normal,
                      vertical: spacing.spaces.semiSmall,
                    ),
                    onPressed: () => Navigator.maybePop(context),
                  ),
              ],
            ),
            Divider(
              color: ColorName.greyColor.withOpacity(0.3),
              height: 2.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: sp.SpacedColumn.normal(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: spacing.insets.horizontal.normal,
                  children: [
                    sp.Space.small(),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: ColorName.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ExpandablePanel(
                      controller: _servicesExpandableController,
                      theme: ExpandableThemeData(
                        iconColor: ColorName.textColor,
                        iconPadding: EdgeInsets.zero,
                      ),
                      header: Text(
                        'Services',
                        style: TextStyle(
                          color: ColorName.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: Container(),
                      expanded: sp.SpacedColumn.extraSmall(
                        padding: spacing.insets.onlyLeft.semiSmall,
                        children: [
                          sp.Space.extraSmall(),
                          ExpandablePanel(
                            controller: _repairMaintenanceExpandableController,
                            theme: ExpandableThemeData(
                              iconColor: ColorName.textColor,
                              iconPadding: EdgeInsets.zero,
                            ),
                            header: Text(
                              'Repair & Maintenance',
                              style: TextStyle(color: ColorName.textColor),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: spacing.insets.all.semiSmall,
                                    child: Text(
                                      'Interior',
                                      style: TextStyle(
                                        color: ColorName.greyColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  color: ColorName.darkBgColor.shade700,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: spacing.insets.all.semiSmall,
                                    child: Text(
                                      'Exterior',
                                      style: TextStyle(
                                        color: ColorName.greyColor.shade600,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ExpandablePanel(
                            controller: _interiorRequestExpandableController,
                            theme: ExpandableThemeData(
                              iconColor: ColorName.textColor,
                              iconPadding: EdgeInsets.zero,
                            ),
                            header: Text(
                              'Inspection Requests',
                              style: TextStyle(color: ColorName.textColor),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: spacing.insets.all.semiSmall,
                                    child: Text(
                                      'House Inspection',
                                      style: TextStyle(
                                        color: ColorName.greyColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Calender',
                      style: TextStyle(
                        color: ColorName.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        color: ColorName.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'FAQ',
                      style: TextStyle(
                        color: ColorName.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Tooltip(
              message: 'log out',
              textStyle: TextStyle(
                  color: ColorName.textColor, fontWeight: FontWeight.w300),
              decoration: BoxDecoration(),
              child: NeumorphicButton(
                child: NeumorphicIcon(
                  SakwahIcons.logout_1,
                  size: 20.0,
                  style: NeumorphicStyle(
                    color: ColorName.secondary,
                    shadowDarkColor: ColorName.darkBgColor,
                    shadowLightColor: ColorName.lightBgColor,
                    shape: NeumorphicShape.concave,
                  ),
                ),
                style: NeumorphicStyle(
                  color: ColorName.lightBgColor,
                  shadowLightColor: ColorName.darkBgColor.shade900,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: spacing.spaces.normal,
                  vertical: spacing.spaces.semiSmall,
                ),
                onPressed: () => Navigator.maybePop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
