import 'package:flutter/material.dart';
import 'dart:async';

class ListBuilderInfinitePage extends StatefulWidget {
  ListBuilderInfinitePage({Key key}) : super(key: key);

  @override
  _ListBuilderInfinitePageState createState() =>
      _ListBuilderInfinitePageState();
}

class _ListBuilderInfinitePageState extends State<ListBuilderInfinitePage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _numberList = new List.empty(growable: true);
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    addTenImages();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //addTenImages();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List builders'),
        ),
        body: Stack(
          children: [
            _createList(),
            _createLoading(),
          ],
        ));
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: getPageOne,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _numberList[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/500/300/?image=$image'),
            fadeInDuration: Duration(milliseconds: 200),
          );
        },
      ),
    );
  }

  Future<Null> getPageOne() async {
    final duration = Duration(seconds: 2);
    new Timer(duration, () {
      _numberList.clear();
      _lastItem++;
      addTenImages();
    });
    return Future.delayed(duration);
  }

  void addTenImages() {
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }
    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    new Timer(duration, responseHTTP);
  }

  void responseHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(microseconds: 250), curve: Curves.fastOutSlowIn);
    addTenImages();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
