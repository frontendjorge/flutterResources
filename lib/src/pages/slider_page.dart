import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _lockCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Image size',
        //divisions: 20,
        value: _sliderValue,
        min: 10.0,
        max: 400.0,
        onChanged: (_lockCheck)
            ? null
            : (value) {
                setState(() {
                  print(value);
                  _sliderValue = value;
                });
              });
  }

  Widget _createImage() {
    return Image(
        width: _sliderValue,
        fit: BoxFit.contain,
        image: NetworkImage(
            'https://images-na.ssl-images-amazon.com/images/I/91MteSqsrJL.jpg'));
  }

  Widget _createCheckBox() {
    /* return Checkbox(
        value: _lockCheck,
        onChanged: (value) {
          setState(() {
            _lockCheck = value;
          });
        }); */

    return CheckboxListTile(
        title: Text('Lock slider'),
        value: _lockCheck,
        onChanged: (value) {
          setState(() {
            _lockCheck = value;
          });
        });
  }

  Widget _createSwitch() {
    return SwitchListTile(
        title: Text('Lock slider'),
        value: _lockCheck,
        onChanged: (value) {
          setState(() {
            _lockCheck = value;
          });
        });
  }
}
