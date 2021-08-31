import 'package:ask_sozleri/service/firebaseadmob.dart';
import 'package:clipboard/clipboard.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class SozKategorileri extends StatefulWidget {
  final String aciklama;
  const SozKategorileri({Key key, this.aciklama}) : super(key: key);

  @override
  _SozKategorileriState createState() => _SozKategorileriState();
}

class _SozKategorileriState extends State<SozKategorileri> {
  var soz = '';
  final ams = AdMobService();

  @override
  Widget build(BuildContext context) {
    InterstitialAd newAdd = ams.getNewTripInterstitial();
    newAdd.load();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 8,
            shadowColor: Colors.white60,
            borderRadius: BorderRadius.circular(24),
            child: Container(
              alignment: Alignment.center,
              height: 230,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xfffa46ea9), width: 1.2),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${widget.aciklama}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.share,
                              color: Color(0xfffa46ea9),
                              size: 30,
                            ),
                            onPressed: () {
                              paylas(soz);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.copy,
                              color: Color(0xfffa46ea9),
                              size: 30,
                            ),
                            onPressed: () async {
                              await FlutterClipboard.copy('${widget.aciklama}');
                              Scaffold.of(context).showSnackBar(SnackBar(
                                  backgroundColor: Color(0xfffa46ea9),
                                  content:
                                      Text(" ✓ Söz başarıyla kopyalandı.")));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> paylas(String soz) async {
  await FlutterShare.share(
      title: "Paylaş",
      text: "$soz",
      linkUrl:
          "Daha fazla söz için uygulamayı hemen indir! : https://play.google.com/store/apps/details?id=com.viennasoft.sarki_sozleri",
      chooserTitle: "Uygulamayı paylaş");
}
