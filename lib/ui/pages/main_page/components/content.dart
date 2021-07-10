import 'dart:math';

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:delta_services/assets/colors.gen.dart';
import 'package:delta_services/assets/sakwah.icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'package:layoutr/common_layout.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:spaces/spaces.dart' as sp;

class Content extends StatefulWidget {
  Content({Key? key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    final spacing = sp.Spacing.of(context);
    final layout = context.commonLayout;

    return Container(
      color: ColorName.whiteColor,
      child: sp.SpacedColumn.normal(
        padding: spacing.insets.all.semiSmall,
        children: [
          sp.Space.small(),
          sp.SpacedRow.normal(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // if (layout.isPhoneOrSmaller)
              NeumorphicButton(
                child: NeumorphicIcon(
                  SakwahIcons.left_open_1,
                  size: 20.0,
                  style: NeumorphicStyle(
                    color: ColorName.secondary,
                    shadowDarkColor: ColorName.darkBgColor,
                    shadowLightColor: ColorName.lightBgColor,
                    shape: NeumorphicShape.concave,
                  ),
                ),
                style: NeumorphicStyle(
                  color: ColorName.whiteColor,
                  shadowLightColor: ColorName.darkBgColor,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: spacing.spaces.normal,
                  vertical: spacing.spaces.semiSmall,
                ),
                onPressed: () => Navigator.maybePop(context),
              ),
              if (layout.isPhoneOrSmaller) sp.Space.semiSmall(),
              Spacer(),
              NeumorphicButton(
                child: NeumorphicIcon(
                  SakwahIcons.list_add,
                  size: 20.0,
                  style: NeumorphicStyle(
                    color: ColorName.secondary,
                    shadowDarkColor: ColorName.darkBgColor,
                    shadowLightColor: ColorName.lightBgColor,
                    shape: NeumorphicShape.concave,
                  ),
                ),
                style: NeumorphicStyle(
                  color: ColorName.whiteColor,
                  shadowLightColor: ColorName.darkBgColor,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: spacing.spaces.normal,
                  vertical: spacing.spaces.semiSmall,
                ),
                onPressed: () => Navigator.maybePop(context),
              ),
            ],
          ),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xs: 12,
                sm: 12,
                md: 6,
                lg: 6,
                xl: 4,
                child: Neumorphic(
                  margin: spacing.insets.exceptLeft.semiSmall,
                  style: NeumorphicStyle(
                    color: ColorName.whiteColor,
                    shadowLightColor: ColorName.darkBgColor,
                  ),
                  child: Padding(
                    padding: spacing.insets.all.semiSmall,
                    child: sp.SpacedColumn.semiSmall(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      padding: spacing.insets.horizontal.extraSmall,
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                            color: ColorName.primary.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        sp.SpacedColumn.extraSmall(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Upcoming Appointments',
                              maxLines: 2,
                              style: TextStyle(
                                color: ColorName.textColor.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              'This week',
                              style: TextStyle(
                                color: ColorName.textColor.withOpacity(0.6),
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 12,
                sm: 12,
                md: 6,
                lg: 6,
                xl: 4,
                child: Neumorphic(
                  margin: spacing.insets.exceptLeft.semiSmall,
                  style: NeumorphicStyle(
                    color: ColorName.whiteColor,
                    shadowLightColor: ColorName.darkBgColor,
                  ),
                  child: Padding(
                    padding: spacing.insets.all.semiSmall,
                    child: sp.SpacedColumn.semiSmall(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      padding: spacing.insets.horizontal.extraSmall,
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                            color: ColorName.secondary.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        sp.SpacedColumn.extraSmall(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Completed',
                              maxLines: 2,
                              style: TextStyle(
                                color: ColorName.textColor.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              'Last week',
                              style: TextStyle(
                                color: ColorName.textColor.withOpacity(0.6),
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 12,
                sm: 12,
                md: 6,
                lg: 6,
                xl: 4,
                child: Neumorphic(
                  margin: spacing.insets.exceptLeft.semiSmall,
                  style: NeumorphicStyle(
                    color: ColorName.whiteColor,
                    shadowLightColor: ColorName.darkBgColor,
                  ),
                  child: Padding(
                    padding: spacing.insets.all.semiSmall,
                    child: sp.SpacedColumn.semiSmall(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      padding: spacing.insets.horizontal.extraSmall,
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                            color: ColorName.badgeColor.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        sp.SpacedColumn.extraSmall(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cancelled',
                              maxLines: 2,
                              style: TextStyle(
                                color: ColorName.textColor.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              'This week',
                              style: TextStyle(
                                color: ColorName.textColor.withOpacity(0.6),
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Neumorphic(
              child: Container(
                width: double.infinity,
                child: DefaultTabController(
                  length: 2,
                  child: sp.SpacedColumn.normal(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    padding: spacing.insets.all.normal,
                    children: [
                      TabBar(
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: ColorName.primaryAccent,
                        labelColor: ColorName.textColor,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        tabs: [
                          Tab(
                            text: 'Appointments',
                          ),
                          Tab(text: 'Invoices'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: sp.SpacedColumn.normal(
                                padding: spacing.insets.horizontal.normal,
                                children: [
                                  ...List.generate(
                                      15, (index) => AppointmentEntry())
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: sp.SpacedColumn(
                                children: [
                                  ...List.generate(
                                      15, (index) => InvoiceEntry())
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum AppointmentState { Booked, Completed, Cancelled }

T match<T>(
  AppointmentState state, {
  required T Function() booked,
  required T Function() completed,
  required T Function() cancelled,
}) {
  switch (state) {
    case AppointmentState.Booked:
      return booked();
    case AppointmentState.Completed:
      return completed();
    case AppointmentState.Cancelled:
      return cancelled();
  }
}

class AppointmentEntry extends StatelessWidget {
  const AppointmentEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacing = sp.Spacing.of(context);
    final layout = context.commonLayout;
    final rnd = Random();
    final state =
        AppointmentState.values[rnd.nextInt(AppointmentState.values.length)];

    return sp.SpacedRow.normal(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '29',
              style: TextStyle(
                color: ColorName.textColor.withOpacity(0.5),
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              'May',
              style: TextStyle(
                color: ColorName.textColor.withOpacity(0.5),
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Plumbing',
              style: TextStyle(
                color: ColorName.textColor.withOpacity(0.5),
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            Text(
              '9:30 - 11:30',
              style: TextStyle(
                color: ColorName.textColor.withOpacity(0.5),
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        Spacer(),
        if (layout.isDesktop)
          Neumorphic(
            padding: spacing.insets.all.extraSmall,
            style: NeumorphicStyle(
              color: match(
                state,
                booked: () => ColorName.primary.withOpacity(0.5),
                completed: () => ColorName.secondary.withOpacity(0.6),
                cancelled: () => ColorName.badgeColor.withOpacity(0.5),
              ),
            ),
            child: Text(
              match(
                state,
                booked: () => 'Upcoming',
                completed: () => 'Done',
                cancelled: () => 'Cancelled',
              ),
              style: TextStyle(
                color: ColorName.whiteColor.withOpacity(0.9),
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ),
        if (layout.isTabletOrSmaller)
          Icon(
            match(
              state,
              booked: () => SakwahIcons.aware,
              completed: () => SakwahIcons.check,
              cancelled: () => SakwahIcons.cancel_1,
            ),
            color: match(
              state,
              booked: () => ColorName.primary.withOpacity(0.7),
              completed: () => ColorName.secondary.withOpacity(0.8),
              cancelled: () => ColorName.badgeColor.withOpacity(0.7),
            ),
            size: 12.0,
          ),
        if (layout.isDesktop) sp.Space.small(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Ksh.5,000',
              style: TextStyle(
                color: ColorName.textColor.withOpacity(0.5),
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            Text(
              'Ksh.2,500/hr',
              style: TextStyle(
                color: ColorName.textColor.withOpacity(0.5),
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class InvoiceEntry extends StatelessWidget {
  const InvoiceEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacing = sp.Spacing.of(context);
    final layout = context.commonLayout;
    final rnd = Random();
    final amount = rnd.nextInt(45000);
    final paid = rnd.nextInt(45000);

    return sp.SpacedRow.normal(
      children: [
        Text(
          '29-05-2020',
          style: TextStyle(
            color: ColorName.textColor.withOpacity(0.5),
          ),
        ),
        Text(
          'ID:889f89',
          style: TextStyle(
            color: ColorName.textColor.withOpacity(0.5),
          ),
        ),
        Text(
          'Ksh. $amount',
          style: TextStyle(
            color: ColorName.textColor.withOpacity(0.5),
          ),
        ),
        Text(
          paid >= amount ? 'Paid' : 'Ksh.$paid',
          style: TextStyle(
            color: ColorName.textColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
