import 'package:flutter/material.dart';
import 'package:listview_test/kitaplar.dart';

class KitapAciklama extends StatelessWidget {
  final KitapDatasi kitaplar;

  const KitapAciklama({Key? key, required this.kitaplar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(kitaplar.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.network(kitaplar.ImageUrl),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  kitaplar.desc,
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
