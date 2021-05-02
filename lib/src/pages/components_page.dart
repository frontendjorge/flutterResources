import 'package:flutter/material.dart';

class ComponentsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ComponentsPageState();
  }
}

class _ComponentsPageState extends State<ComponentsPage> {
  // final _textStyle = new TextStyle(fontSize: 25);
  final options = ['One', 'Two', 'Three'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter components'),
          centerTitle: true,
          elevation: 0.7,
        ),
        //body: ListView(children: _createItems()));
        body: ListView(children: _createShortItems()));
  }

  /*
  //Esta es una forma un poco más larga
  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>.empty(growable: true);
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list..add(tempWidget)..add(Divider());
    }
    return list;
  }*/

  List<Widget> _createShortItems() {
    var widgets = options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text('$item!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}
