import 'package:flutter/material.dart';
import 'package:flutter_app/src/providers/menu_provider.dart';
import 'package:flutter_app/src/utils/icon_string_util.dart';

class ComponentsListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ComponentsPageListState();
  }
}

class _ComponentsPageListState extends State<ComponentsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter components from JSON'),
          centerTitle: true,
          elevation: 0.7,
        ),
        //body: ListView(children: _createItems()));
        body: _list());
  }

  Widget _list() {
    //menuProvider.loadData();
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['text']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          // esta es una manera de navegar
          /*  final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route);*/

          //navegacion por nombre de ruta
          Navigator.pushNamed(context, element['route']);
        },
      );
      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
