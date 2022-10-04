import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:listview_test/kitapaciklama.dart';
import 'package:listview_test/kitaplar.dart';

class Patates extends StatefulWidget {
  const Patates({super.key});

  @override
  State<Patates> createState() => _PatatesState();
}

class _PatatesState extends State<Patates> {
  static List<String> kitaplar = [
    "Arachnoid Mater",
    "Kara Delikler",
    "Kozmos",
    "1984",
    "Bilimsel Devrimlerin Yapisi"
  ];

  static List url = [
    "https://i.dr.com.tr/cache/500x400-0/originals/0001878105001-1.jpg",
    "https://i.dr.com.tr/cache/500x400-0/originals/0001718325001-1.jpg",
    "https://i.dr.com.tr/cache/500x400-0/originals/0000000059256-1.jpg",
    "https://i.dr.com.tr/cache/500x400-0/originals/0000000064038-1.jpg",
    "https://i.dr.com.tr/cache/500x400-0/originals/0000000326929-1.jpg",
  ];
  static List<String> yazarlar = [
    "Serkan Karaismailoğlu",
    "Stephen Hawking",
    "Carl Sagan",
    "George Orwell",
    "Thomas S. Kuhn",
  ];

  static List<String> fiyatlar = [
    "64,35 TL",
    "25,35 TL",
    "57,20 TL",
    "27,30 TL",
    "62,95 TL",
  ];

  static List<String> aciklamalar = [
    "Merhaba okuyucu. Kim olduğunu ya da hangi tarihte olduğumuzu bilmiyorum ama şu an bu satırları okuduğuna göre bir şekilde yolumuz kesişmiş demek. Baştan uyarayım. Burada yazanlar küçük bir olayın parçasıymış gibi görünse de aslında kökleri oldukça derinlere uzanan karışık bir hikâye var karşında. Hatırlayabildiğim kadar yazmaya çalıştım her şeyi. Çünkü ben sonum. Olur da bana bir şey olursa, nöronlarımda yaşamakta olan bu bilgiler toprağa gömülecek. O yüzden her şeyi yazmak istedim. Geçmişim ve hatıralarım ölmesinler diye onları diri diri sayfaların içine gömdüm. Umarım beni ve yaşadıklarımı anlarsın. Evime ve vücuduma hoş geldin.",
    "2016 yılının BBC Reith derslerinde Stephen Hawking, bütün bir ömür süren araştırmalarını on beş dakika içinde aktarma gibi gerçekten zorlu bir meydan okumayı kabul etti. Bu çok kısa süren derslerde Hawking, evrenin gizemlerini ortaya sererken, kara delikleri anladığımız takdirde uzayzamanın sırlarına erişebileceğimizi vurguluyor.",
    "Carl Sagan zamanımızın en parlak bilim adamlarından biridir... İçinde varlığımızı sürdürdüğümüz akıllara durgunluk veren Kozmos’un sonsuzluğunu dile getirirken bilimin geçmişine, şimdiki zamanına ve geleceğine ilişkin muhteşem bir eser yaratmış",
    "Büyük Birader olarak adlandırılan kişi ve onun denetimindeki partisi, Okyanusya yönetiminin başıdır. Okyanusya’da Büyük Birader’in otoritesiyle, toplumda hiyerarşik bir sınıflandırma bulunur. Topluma, tüm insani duygulardan arınmalarını emreden Büyük Birader; ülkede aşkı, erotizmi, bireysel evliliği ve günlük tutmak gibi insani eylemleri de yasaklamıştır. Evlilikler, tamamen devlet kontrolündedir ve amaç yalnızca devlete hizmet edecek çocuklar yetiştirmektir. Diğer yandan, ülkedeki tüm yazılı ve yazısız yayın organları, sadece devlete bağlıdır ve asla kendi düşüncelerinizi ifade etmenize izin verilmez.",
    "Bilimsel buluşların mantıksal yapısı nedir? Ne tür kurallara ve kavramsal araçlara gerek vardır? Bu araçlarla üretilen bilginin sürekli ileriye, daha doğru olana gittiğini nereden bilebiliriz? Birbirine zıt bilimsel açıklamaların hangisinin daha geçerli olduğunu belirlemek için ne gibi ölçütlere sahibiz? Daha çok bilim felsefesi alanına giren bu sorulara yanıt ararken zorunlu olarak bilimin tarihsel bir süreç olarak nasıl geliştiği ve ne tür koşullarda üretildiği sorularının da yanıtlanması gerekir. Kuhn'un, bilim tarihinin kesintisiz bir bilimsel birikimin sonucu olarak değil; aksine, bilgiyi büyük kesintilere, hatta kopmalara uğratan devrimci dönüşümlerle geliştiğini gösterdiği Bilimsel Devrimlerin Yapısı; yayınlandığı 1962 yılında bilim tarihi, bilim felsefesi ve bilim sosyolojisi alanlarında bir bomba etkisi yaratmış ve o tarihten bu yana çağdaş bilim ve felsefe dünyasının temel klasiklerinden biri olarak kabul edilmeye başlanmıştır. Batı düşünce tarihinin temelinde yatan ampirist bilim geleneğini, bilim tarihindeki büyük dönüşüm ve devrimleri sorgulayan Kuhn; bilimsel ilerlemenin temel dayanağı olduğu iddia edilen ampirist bilgi kuramının bir gereği olarak bilimin tarihini de kendilerine göre yeniden yazanlara karşı, aynı tarihe bakarak bambaşka bir ilerleme yapısının ve bambaşka felsefi sonuçların oluşturulabileceğini kanıtlamak çabasındadır ve Bilimsel Devrimlerin Yapısı bu çabanın ürünüdür.",
  ];

  final List<KitapDatasi> Kitaplar = List.generate(
      kitaplar.length,
      (index) => KitapDatasi(
            '${kitaplar[index]}',
            '${yazarlar[index]}',
            '${url[index]}',
            '${fiyatlar[index]}',
            '${aciklamalar[index]}',
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      bottomNavigationBar: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          padding: EdgeInsets.all(15),
          gap: 5,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ]),
      appBar: AppBar(title: const Text("Kitaplar")),
      body: ListView.builder(
          itemExtent: 100,
          itemCount: Kitaplar.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.all(5),
              title: Text(Kitaplar[index].name),
              trailing: Text(Kitaplar[index].costs),
              subtitle: Text(Kitaplar[index].author),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: Transform.scale(
                    scaleX: 1.1,
                    scaleY: 1.1,
                    child: Image.network(
                      width: 50,
                      height: 100,
                      fit: BoxFit.fill,
                      Kitaplar[index].ImageUrl,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => KitapAciklama(
                          kitaplar: Kitaplar[index],
                        )));
              },
            );
          }),
    );
  }
}
