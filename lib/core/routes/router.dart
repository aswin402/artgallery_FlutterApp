import 'package:go_router/go_router.dart';
import '../../app/app_shell.dart';
import '../../pages/about/about_page.dart';
import '../../pages/art/art_list_page.dart';
import '../../pages/contactus/contact_us_page.dart';
import '../../pages/home/home_page.dart';
import '../../pages/inventory_page/art_inventory_page.dart';
import '../../pages/publisharts/publish_art_page.dart';
import 'app_routes.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return AppShell(child: child);
      },
      routes: [
        GoRoute(
          path: AppRoutes.home,
          builder: (_, _) => const HomePage(),
        ),
        GoRoute(
          path: AppRoutes.arts,
          builder: (_, _) => const ArtListPage(),
        ),
        GoRoute(
          path: AppRoutes.inventory,
          builder: (_, _) => const ArtInventoryPage(),
        ),
        GoRoute(
          path: AppRoutes.publish,
          builder: (_, _) => const PublishArtPage(),
        ),
        GoRoute(
          path: AppRoutes.about,
          builder: (_, _) => const AboutPage(),
        ),
        GoRoute(
          path: AppRoutes.contact,
          builder: (_, _) => const ContactUsPage(),
        ),
      ],
    ),
  ],
);
