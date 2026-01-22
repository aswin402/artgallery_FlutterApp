import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/routes/app_routes.dart';
import '../core/widgets/app_footer.dart';
import '../core/widgets/app_navbar.dart';
import '../core/widgets/app_side_navbar.dart';

class AppShell extends StatefulWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  NavPage _getNavPage(String location) {
    if (location == AppRoutes.home) return NavPage.home;
    if (location.startsWith(AppRoutes.arts)) return NavPage.arts;
    if (location.startsWith(AppRoutes.about)) return NavPage.about;
    if (location.startsWith(AppRoutes.contact)) return NavPage.contact;
    if (location.startsWith(AppRoutes.publish)) return NavPage.publish;
    if (location.startsWith(AppRoutes.inventory)) return NavPage.inventory;
    return NavPage.home;
  }

  void _onNavigate(BuildContext context, NavPage page) {
    final route = switch (page) {
      NavPage.home => AppRoutes.home,
      NavPage.arts => AppRoutes.arts,
      NavPage.about => AppRoutes.about,
      NavPage.contact => AppRoutes.contact,
      NavPage.publish => AppRoutes.publish,
      NavPage.inventory => AppRoutes.inventory,
    };
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    final activePage = _getNavPage(location);

    return Scaffold(
      key: _scaffoldKey,

      /// RIGHT SIDE NAVBAR
      endDrawer: AppSideNavbar(
        activePage: activePage,
        onNavigate: (page) => _onNavigate(context, page),
      ),

      body: Column(
        children: [
          /// TOP NAVBAR
          AppTopNavbar(
            onMenuTap: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),

          /// PAGE CONTENT
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  widget.child,
                  const SizedBox(height: 80),
                  const AppFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
