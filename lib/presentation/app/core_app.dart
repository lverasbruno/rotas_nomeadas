import 'package:aulas_bruno/domain/routes/named_routes.dart';
import 'package:aulas_bruno/presentation/app/app_routes.dart';
import 'package:flutter/material.dart';

class CoreApp extends StatelessWidget {
  const CoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AulasBruno',
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      initialRoute: NamedRoutes.home.route,
    );
  }
}
