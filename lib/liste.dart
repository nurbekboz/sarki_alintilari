import 'dart:convert';

import 'package:ask_sozleri/service/ad_services.dart';
import 'package:ask_sozleri/service/firebaseadmob.dart';
import 'package:ask_sozleri/service/push_notification_service.dart';
import 'package:ask_sozleri/sozler.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

import 'locator.dart';

class Sozler extends StatefulWidget {
  const Sozler({Key key}) : super(key: key);

  @override
  _SozlerState createState() => _SozlerState();
}

class _SozlerState extends State<Sozler> {
  void initState() {
    locator<PushNotificationService>().init();
    super.initState();
  }

  List soz;
  final ams = AdMobService();

  @override
  Widget build(BuildContext context) {
    InterstitialAd newAdd = ams.getNewTripInterstitial();
    newAdd.load();
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
    );
  }
}

Future<void> paylas(String soz) async {
  await FlutterShare.share(
      title: "Paylaş",
      text: "$soz",
      linkUrl:
          "Daha fazla söz için uygulamayı hemen indir! : https://play.google.com/store/apps/details?id=com.viennasoft.ozlu_sozler",
      chooserTitle: "Uygulamayı paylaş");
}
