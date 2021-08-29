import 'dart:convert';

import 'package:ask_sozleri/sozler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class Sozler extends StatefulWidget {
  const Sozler({Key key}) : super(key: key);

  @override
  _SozlerState createState() => _SozlerState();
}

class _SozlerState extends State<Sozler> {
  List soz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString("assets/sozler/asikedicisozler.json"),
          builder: (context, cevap) {
            soz = jsonDecode(cevap.data.toString());
            return ListView.builder(
              itemCount: soz == null ? 0 : soz.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: SozKategorileri(aciklama: soz[index]["aciklama"]),
                );
              },
            );
          }),
      /*bottomNavigationBar: Container(
        height: 60,
        child: Center(child: BannerReklam()),
      ),*/
    );
  }
}

Future<void> paylas(String soz) async {
  await FlutterShare.share(
      title: "Paylaş",
      text:
          "Daha fazla söz için uygulamayı hemen indir! : https://play.google.com/store/apps/details?id=com.viennasoft.ozlu_sozler",
      linkUrl: "$soz",
      chooserTitle: "Uygulamayı paylaş");
}
