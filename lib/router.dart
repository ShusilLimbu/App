import 'package:auto_route/auto_route.dart';
import 'package:ohms/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: FoodsRoute.page, initial: true)
      ];
}
