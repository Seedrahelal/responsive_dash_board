import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/layouts/desktop_layout.dart';
import 'package:responsive_dash_board/layouts/mobile_layout.dart';
import 'package:responsive_dash_board/layouts/tablet_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey <ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFFFAFAFA),
                leading: IconButton(onPressed: () {
                  scaffoldkey.currentState!.openDrawer();
                },icon: const Icon(Icons.menu)),
              )
            : null,
        drawer:
            MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
        backgroundColor: const Color(0xFFF7F9FA),
        body: AdaptiveLayout(
            mobileLayout: (context) => const MobileLayout(),
            tabletLayout: (context) => const TabletLayout(),
            desktopLayout: (context) => const DesktopLayout()),
      ),
    );
  }
}
