import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/animated_container.dart';
import 'package:flutter_app/src/pages/card_page.dart';
import 'package:flutter_app/src/pages/componetsList_page.dart';
import 'package:flutter_app/src/pages/avatar_page.dart';
import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/pages/count_page.dart';
import 'package:flutter_app/src/pages/home_page.dart';
import 'package:flutter_app/src/pages/components_page.dart';
import 'package:flutter_app/src/pages/input_page.dart';
import 'package:flutter_app/src/pages/listview_page.dart';
import 'package:flutter_app/src/pages/listviewinfinitescroll_page.dart';
import 'package:flutter_app/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => ComponentsListPage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'statefulCounter': (BuildContext context) => CountPage(),
    'statelessPage': (BuildContext context) => HomePage(),
    'listview': (BuildContext context) => ComponentsPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'listbuilders': (BuildContext context) => ListBuilderPage(),
    'infinite': (BuildContext context) => ListBuilderInfinitePage(),
  };
}
