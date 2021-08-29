import 'dart:math';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<String> phrases = [
    "Sevemedim ben bu günü.\nDuman",
    "Düştüğüm en manalı boşluksun.",
    "Tüm çiçeklerden güzeldir papatyalar.\nÇağan Şengül",
    "Sevgi mi? Artık kamyon ardı yazılarda.\n Taladro",
    "Zemine uzananlar düşemez.\nEmir Can İğrek",
    "Ne bir eksik ne bir fazla canımsın sen.\n Sezen Aksu",
    "Dünyalar sizin olsun, benim istediğim bambaşka.\n Cem Adrian",
    "Sen bana nefes, ben sana herkes.\n Emircan İğrek",
    "Zira yeterince katlandım insanlara.\n Şehinşah",
    "Elimden gittin, ama içimden geliyorsun.\n Canfeza",
    "Ne zaman beynime bir kurşun sıkmak istesem, o bu şarkıyı çalıyor! Ruhumdaki kargaşa ve karamsarlık dağılıyor ve ben yine özgürce nefes almaya başlıyorum.\n Emir Can İğrek-Beyaz",
    "İkimiz de belamızı bulmuşuz birbirimizden \nNe senin bende\nNe benim sende...\nEmir Can İğrek- Aşk Yasal Cinayet",
    "Kabul et sonu yoktu, bir gün ayrılacaktık.\n Hakan Altun",
    "Ne olur çık gel, başımı başka birine yaslamadım.\n Taladro",
    "Hep sonradan gelir, aklım başıma.\n Ahmet Kaya",
    "Birden ay ışığını kesti, bir de sen çok değiştin.\n Manga ",
    "Bugün kötü oluyor dün sevilenler.\n Taladro",
    "Ne yapayım manzarası sen olmayan resmi.\n Canfeza",
    "Haddinden dolu yorgunum.\n Taladro",
    "Aklıma kaybettiklerim geliyor.\n Taladro",
    "Elim başka bir ele gitmiyor gel.\n Canfeza",
    "Parmak uçlarında yürü hatıralar uyanmasın.\n Alper Ayyıldız",
    "Yine herkesi kendim sandım.\n Sancak",
    "Yok olunca mı özleyeceksin beni.\n No.1",
    "Seni ben gibi sevmiyorum canım buna sıkkın.\n Canfeza",
    "Ahmak olmasaydı insan tüm zaferler dostça kazanılırdı.\n Ceza",
    "Bana boş laf anlatma kalbin taşa dönmüş senin.\n Norm Ender",
    "Ona da herşeyim demişsin bana ne kaldı.\n Model",
    "Olmadığının farkındayım her dakika aklımdasın.\n Gazapizm",
    "Geçti iş işten, geçerken ruhumu geçirdiler şişten.\n Emar",
    "O gün ki gördüm seni yaktın ahh yaktın beni.\n Sema",
    "Lütfen kalbini aç, eve dönüyorum.\n Şanışer",
    "İçinden geçeni söyle kalırsa yazık olur.\n Pinhani",
    "Omuzumda iz bırakma,yüküm dünyaya yakın.\n  Haluk Levent",
    "Oysa ben bu gece yüreğim elimde sana bir sırrımı söyleyecektim.\n Ahmet Kaya",
    "Lütfen kalbini aç eve dönüyorum.\n Şanışer",
    "Yıkadıkça geçmiyor, anıların izleri .\n Tuğçe Kandemir",
    "Tüm acılarım gizli, her tebessümümün altında.\n Mustafa Ceceli",
    " Eve yalnız dönüyorum ben de. Sakın “kal” deme bana, gidiyorum. Alışamadım bu kente.\n Yaşar Kurt",
    "Gözlerinin dokunduğu her mekan memleketim. Bakıver de uzamasın gurbetim, esaretim.\n Mazlum Çimen",
    "Hiç bir vücut ısısı değiştirmiyorsa mevsim normallerini, sevmek de yok artık hiç kimseyi.\n Cüneyt Ergün",
    "Hayatta hiçbir şeyim az olmadı senin kadar, hiçbir şeyi istemedim seni istediğim kadar.\n Cem Karaca",
    "Gitmek çözecekse ve biri gidecekse, buralar gitsin, sen gitme.\n Feridun Düzağaç",
    "Sensizliğin acısını sen nereden bileceksin... Sen hiç sensiz kalmadın ki.\n İlhan İrem",
    "Bir gün gelir herkes kendi yoluna gider, her şey nasıl başladıysa öyle biter.\n Yavuz Çetin",
    "Benzemez kimse sana, tavrına hayran olayım.\n Müzeyyen Senar",
    "Oysa ben bu gece, yüreğim elimde, sana bir sırrımı söyleyecektim. Şu mermi içimi delmeseydi eğer seni alıp götürecektim.\n Ahmet Kaya",
    "Herkes” dedi, merak içinde, ölümden sonra hayat var mı diye. Boşuna düşünürler, sanki hayat varmış gibi ölümden önce.\n Teoman",
    "Madem soysuz gönlün bende yoktu, niye doğru yoldan şaşırttın beni? \n Mustafa Özarslan",
    "Bir gün artı bir gün daha, bir günahtı her gün daha, bir gün aktı gözyaşlarım, durmadı, durmadı.\n Yaşar",
    "Dün gece sen uyurken yüreğim bir yıldız gibi bağlandı sana, işte bu yüzden sırf bu yüzden yeni bir isim verdim sana, Destina.\n Yeni Türkü",
    "Aşk için yeryüzünde,uzaktan ötesi yok. En uzun gecelerde, şafaktan ötesi yok. Aşkı sende bulana, topraktan ötesi yok.\n Ayna",
    "Yıldızlar yerinde güzel, bırak dursun yar, saçlarımı ellerinle okşa yeter yar.\n Barış Manço",
    "Bak burada beyaz ellerin, biraz eksik sarıyorsa belimi, görmemiş der geçerim. Şeffaf çizdim ben zaten kendimi.\n Birsen Tezer",
    "İyi bişey yok mu bugün haberlerde, işte bak hep aynı yüzler ekranda, kısır döngüye girdim prime time da… Bıktım be.\n Bulutsuzluk Özlemi",
    "Şarkılarım senindir her zaman, ben sen oldum iste o zaman.\n Bülent Ortaçgil",
    "Sen nehirleri yataklarında ayırırdın da örterdin üstümü.\n Büyük Ev Ablukada",
    "Tek tek anlayarak hatalarımı, sevmeye çalışıyorum yalnızlığımı.\n Candan Erçetin",
    "Umut şimdi hiç görmeyen birine gökkuşağını anlatmak kadar zor ve imkansız.\n Cem Adrian",
    "Bir ömrümü yalnızca sevgi vererek geçirebilirdim ama sizin vermeye, pek değil, hiç vaktiniz olmadı.\n Düş Sokağı Sakinleri",
    "Bir şairin şiirinden ibaret tüm bildiğin büyük ihtimalle.\n Emre Aydın",
    "Omzumda iz bırakma, yüküm dünyaya yakın.\n Haluk Levent",
    "Günler günlerin ardından seni unutmak mecburiyetindeyim, seni sevmeler cumhuriyetinde.\n Mazhar Fuat Özkan",
    "Sevmektir yaşatan inan sevilmek değil.\n Orhan Gencebay",
    "Güzel günlerimizin bittiğini sanma, belki bir daha böylesi olmaz ama her bir gün güzel aslında.\n Pinhani",
    "Beni hoyrat bir makasla, eski bir fotoğraftan oydular. Orada kaldı yanağımın yarısı, kendini boşlukla tamamlar.\n Sezen Aksu",
    "Sakın nefret ettiğimi düşünme, bende böyle duygular barındıramazsın. \n Şebnem Ferah",
    "Cahildim dünyanın rengine kandım, hayale aldandım boşuna yandım .\n Neşet Ertaş",
    "Kanayıp ne kadar tutabilirsin gül uğruna dikeni.\n Sezen Aksu",
    "Aşk bir uçurumdan düşmek gibidir bunun için sevgiliye yar denilir.\n Mercan Alev ",
    "Sen hangi yalanı hayat sanıp ölüyorsun.\n Cem Adrian",
    "Sen oImasan buraIara geIemezdim ben sevemezdim bu şehri anIamazdım diIinden..\n Mazhar Fuat Özkan",
    "Göz göze geIince mahvoIduğumu,gerçekten mi görmüyorsun?\n Sezen Aksu ",
    "Kestirir saçımı kendimi avuturum, bir güIü kurutur kurursa unuturum.\n Sertab Erener",
    "Öpesim var gözIerinden Nefesim dar özIeminden.\n Bilal Sonses",
    "Oysa ben bu gece yüreğim eIimde sana bir sırrımı söyIeyecektim.\n Ahmet Kaya",
    "Can bu yıkık, kırık dökük.\n SıIa",
    "Şimdi öImek istemem,kaIbine dokunmadan.\n Teoman",
    "Bir kere de bana ihtiyacın oIsun,bir aIo de geImezsem gençIiğim soIsun.\n YıIdız TiIbe ",
    "Ya değiIse sandığım gibi,ya daha da kötüyse sandığımda.\n Sagopa Kajmer ",
    "Yarın oImaz bugün, yarım oImaz bütün,benim oI bu gece.\n Feride Hilal "
  ];
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/kapak22.png',
                          height: 350,
                          fit: BoxFit.fitHeight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 16,
                right: 16,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    '${phrases.elementAt(Random().nextInt(phrases.length))}',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontFamily: 'Lora'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
