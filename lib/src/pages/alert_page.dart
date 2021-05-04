import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          key: Key('alertButton'),
          onPressed: () => _showAlert(context),
          child: Text('Mostrar Alerta'),
          style: ElevatedButton.styleFrom(
              primary: Colors.orange, // background
              onPrimary: Colors.white,
              shape: StadiumBorder() // foreground
              ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible:
            true, //permite cerrar la alerta tocando cualquier parte externa
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: Text('Title'),
            content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[Text('This is the alert content')]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok')),
            ],
          );
        });
  }
}
