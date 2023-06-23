import 'package:flutter_beginner/bmi/result/result_sceen.dart';
import 'package:go_router/go_router.dart';

import 'main/main_screen.dart';
import 'result/test.dart';

final test = MainScreenState();

final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
        path: '/main',
        builder: (context, state) {
          return MainScreen();
        },
        routes: [
          GoRoute(
              path: 'detail',
              builder: (context, state) {
                return OnePage();
              }),
        ]),
    GoRoute(
      path: '/detail2',
      name: 'detail2',
      builder: (context, state) {
        return ResultSceen(
            height: double.parse(test.heightController.text),
            weight: double.parse(test.weightController.text));

        // double height = double.parse(state.queryParameters['height']!);
        // double weight = double.parse(state.queryParameters['weight']!);
        //
        // return ResultSceen(height: height, weight: weight); // 코드 물어보기?
      },
    ),
  ],
);
