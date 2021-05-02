import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_app/src/pages/count_page.dart';
//import 'package:flutter_app/src/pages/home_page.dart';
//import 'package:flutter_app/src/pages/components_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('en', 'US'), const Locale('es', 'ES')],
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
