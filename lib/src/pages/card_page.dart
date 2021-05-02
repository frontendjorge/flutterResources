import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Page'),
        centerTitle: true,
        elevation: 0.7,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(
            height: 10.0,
          ),
          _cardType2(),
          SizedBox(
            height: 10.0,
          ),
          _cardType1(),
          SizedBox(
            height: 10.0,
          ),
          _cardType2(),
          SizedBox(
            height: 10.0,
          ),
          _cardType1(),
          SizedBox(
            height: 10.0,
          ),
          _cardType2(),
          SizedBox(
            height: 10.0,
          ),
          _cardType1(),
          SizedBox(
            height: 10.0,
          ),
          _cardType2(),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text(
              'Titulo para la tarjeta',
              key: Key('TitleOne'),
            ),
            subtitle: Text(
                'Este es un ejemplo de subtitulo largo para la tarjeta creada.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancel')),
              TextButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    final card = Container(
        //clipBehavior: Clip.antiAlias, //respeta los borderRadius sin que se salga el contenido
        child: Column(
      children: <Widget>[
        // Esta es una manera de cargar imagenes desde url con loading
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://cdn-ds.com/blogs-media/sites/347/2017/01/10081510/Which-Hyundai-Models-Have-the-Best-Design-a_o.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 150.0,
          fit: BoxFit.cover,
        ),
        // Esta es una manera de cargar imagenes desde urls
        /*Image(
            image: NetworkImage(
                'https://cdn-ds.com/blogs-media/sites/347/2017/01/10081510/Which-Hyundai-Models-Have-the-Best-Design-a_o.jpg')),*/
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('This is the image description.'),
        )
      ],
    ));

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0)),
          ]
          //color: Colors.red
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card,
      ),
    );
  }
}
