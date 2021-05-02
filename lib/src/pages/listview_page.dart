import 'package:flutter/material.dart';

class ListBuilderPage extends StatefulWidget {
  ListBuilderPage({Key key}) : super(key: key);

  @override
  _ListBuilderPageState createState() => _ListBuilderPageState();
}

class _ListBuilderPageState extends State<ListBuilderPage> {
  List<int> _numberList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List builders'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _numberList[index];
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300/?image=$image'),
          fadeInDuration: Duration(milliseconds: 200),
        );
      },
    );
  }
}
