import 'package:ask_sozleri/liste.dart';
import 'package:ask_sozleri/rastgele.dart';
import 'package:ask_sozleri/service/ad_services.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Şarkılardan Alıntılar"),
          elevation: 3,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xfff334292),
                Color(0xfffa46ea9),
              ], begin: Alignment.bottomLeft, end: Alignment.topLeft),
              color: Color(0xfffa46ea9),
            ),
          ),
          bottom:
              TabBar(indicatorColor: Colors.white, indicatorWeight: 3, tabs: [
            Tab(
              icon: Icon(Icons.format_quote),
              text: "Alıntılar",
            ),
            Tab(
              icon: Icon(Icons.refresh_outlined),
              text: "Rastgele",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Sozler(),
            Rastgele(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          child: Center(child: BannerReklam()),
        ),
      ),
    );
  }
}
