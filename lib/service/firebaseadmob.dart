import 'dart:io';

import 'package:firebase_admob/firebase_admob.dart';

class AdMobService {
  String getAdMobAppId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544~1458002511';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-9912889867352253~6414364642';
    }
    return null;
  }

  String getBannerAdId() {
    if (Platform.isIOS) {
//      return 'ca-app-pub-2334510780816542/6833456062';
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isAndroid) {
//      return 'ca-app-pub-2334510780816542/2993163849';
      return "ca-app-pub-9912889867352253/9695134105";
    }
    return null;
  }

  String getInterstitialAdId() {
    if (Platform.isIOS) {
//      return '';
      return 'ca-app-pub-3940256099942544/1033173712';
    } else if (Platform.isAndroid) {
//      return '';
      return "ca-app-pub-9912889867352253/2475119637";
    }
    return null;
  }

  InterstitialAd getNewTripInterstitial() {
    return InterstitialAd(
      adUnitId: getInterstitialAdId(),
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
  }
}
