import 'package:delta_services/assets/assets.gen.dart';
import 'package:delta_services/assets/colors.gen.dart';
import 'package:delta_services/assets/sakwah.icons.dart';
import 'package:delta_services/ui/pages/main_page/components/sidemenu.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:spaces/spaces.dart' as sp;
import 'package:layoutr/common_layout.dart';
import 'package:badges/badges.dart';

class SubMenu extends StatefulWidget {
  SubMenu({Key? key}) : super(key: key);

  @override
  _SubMenuState createState() => _SubMenuState();
}

class _SubMenuState extends State<SubMenu> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final spacing = sp.Spacing.of(context);
    final layout = context.commonLayout;

    if (!layout.isTablet) {
      try {
        final state = _scaffoldKey.currentState;
        if (state != null && state.isDrawerOpen) {}
      } catch (e) {}
    }
    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250.0),
        child: SideMenu(),
      ),
      body: Container(
        color: ColorName.darkBgColor,
        child: SafeArea(
          child: sp.SpacedColumn.normal(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: spacing.insets.all.normal,
            children: [
              sp.Space.small(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (layout.isTabletOrSmaller)
                    NeumorphicButton(
                      child: NeumorphicIcon(
                        SakwahIcons.menu,
                        size: 20.0,
                        style: NeumorphicStyle(
                          color: ColorName.secondary.withOpacity(0.7),
                          shadowDarkColor: ColorName.darkBgColor,
                          shadowLightColor: ColorName.lightBgColor,
                          shape: NeumorphicShape.concave,
                        ),
                      ),
                      style: NeumorphicStyle(color: ColorName.darkBgColor),
                      padding: EdgeInsets.symmetric(
                        horizontal: spacing.spaces.normal,
                        vertical: spacing.spaces.semiSmall,
                      ),
                      onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                    ),
                  if (layout.isTabletOrSmaller) sp.Space.semiSmall(),
                  Expanded(
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        color: ColorName.darkBgColor,
                        shadowLightColorEmboss: ColorName.whiteColor,
                        depth: -2.0,
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        cursorColor: ColorName.textColor,
                        style: TextStyle(color: ColorName.textColor),
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Search',
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: spacing.spaces.normal,
                            vertical: spacing.spaces.normal,
                          ),
                          suffixIcon: Padding(
                            padding: spacing.insets.all.normal,
                            child: NeumorphicIcon(
                              SakwahIcons.search_1,
                              size: 18.0,
                              style: NeumorphicStyle(
                                color: ColorName.greyColor,
                                shadowDarkColor: ColorName.darkBgColor,
                                shadowLightColor: ColorName.lightBgColor,
                                shape: NeumorphicShape.concave,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicIcon(
                    SakwahIcons.sort,
                    size: 18.0,
                    style: NeumorphicStyle(
                      color: ColorName.secondary.withOpacity(0.7),
                      shadowDarkColor: ColorName.darkBgColor,
                      shadowLightColor: ColorName.lightBgColor,
                      shape: NeumorphicShape.concave,
                    ),
                  ),
                  sp.Space.semiSmall(),
                  Text(
                    'Sort By Name',
                    style: TextStyle(
                      color: ColorName.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Badge(
                    badgeColor: ColorName.primaryAccent,
                    padding: spacing.insets.all.small,
                    badgeContent: Text(
                      '2',
                      style: TextStyle(
                        color: ColorName.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      ),
                    ),
                    child: NeumorphicButton(
                      child: NeumorphicIcon(
                        Icons.sort,
                        size: 18.0,
                        style: NeumorphicStyle(
                          color: ColorName.secondary.withOpacity(0.6),
                          shadowDarkColor: ColorName.darkBgColor,
                          shadowLightColor: ColorName.lightBgColor,
                          shape: NeumorphicShape.concave,
                        ),
                      ),
                      style: NeumorphicStyle(color: ColorName.darkBgColor),
                      padding: EdgeInsets.symmetric(
                        horizontal: spacing.spaces.semiSmall,
                        vertical: spacing.spaces.semiSmall,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ], // price range, rating, projects completeed
              ),
              Divider(
                color: ColorName.greyColor.withOpacity(0.3),
                height: 2.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: sp.SpacedColumn.normal(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gardening/Landscaping',
                        style: TextStyle(
                          color: ColorName.textColor.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'Painting/Finishes',
                        style: TextStyle(
                          color: ColorName.textColor.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'Tile Replacement',
                        style: TextStyle(
                          color: ColorName.textColor.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'Mechanical Repairs',
                        style: TextStyle(
                          color: ColorName.textColor.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'Electrical Repair',
                        style: TextStyle(
                          color: ColorName.textColor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: spacing.spaces.semiSmall,
                  children: [
                    Icon(
                      SakwahIcons.facebook_2,
                      color: ColorName.greyColor,
                      size: 18.0,
                    ),
                    Icon(
                      SakwahIcons.twitter_1,
                      color: ColorName.greyColor,
                      size: 18.0,
                    ),
                    Icon(
                      SakwahIcons.instagram_1,
                      color: ColorName.greyColor,
                      size: 18.0,
                    ),
                    Icon(
                      SakwahIcons.email,
                      color: ColorName.greyColor,
                      size: 18.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
