import 'dart:convert';

import 'package:ask_sozleri/sozler.dart';
import 'package:flutter/material.dart';

class JsonDosyasi extends StatefulWidget {
  final String jsonName;
  final String baslik;

  const JsonDosyasi({Key key, this.jsonName, this.baslik}) : super(key: key);

  @override
  _JsonDosyasiState createState() => _JsonDosyasiState();
}

class _JsonDosyasiState extends State<JsonDosyasi> {
  List soz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.baslik}"),
      ),
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/sozler/${widget.jsonName}.json"),
            builder: (context, cevap) {
              soz = jsonDecode(cevap.data.toString());
              return ListView.builder(
                itemCount: soz == null ? 0 : soz.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: SozKategorileri(
                      aciklama: soz[index]["aciklama"],
                    ),
                  );
                },
              );
            }),
        //Text("" + soz[index]['aciklama']
      ),
    );
  }
}
