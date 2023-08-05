import 'package:believers/work.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'Work',
          builder: (BuildContext context, GoRouterState state) {
            return const Work();
          },
        ),
      ],
    ),
  ],
);
