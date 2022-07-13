import 'package:auto_route/annotations.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/startup/startup_view.dart';
@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route',
    routes: [
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: HomeView, path: '/home'),
])
class $AppRouter {}