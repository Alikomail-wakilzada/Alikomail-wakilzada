

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/second');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(radius: 50, backgroundImage: AssetImage('images/1.jpg')),
            SizedBox(height: 20),
            CircleAvatar(radius: 50, backgroundImage: NetworkImage('images/2.jpg')),
            SizedBox(height: 20),
            CircleAvatar(radius: 50, backgroundImage: NetworkImage('images/3.jpg')),
            SizedBox(height: 50),
            CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow), strokeWidth: 8),
            Text("10 great Actors", style: TextStyle(color: Colors.orange, fontSize: 40.0)),
            Text('By: Alikomail', style: TextStyle(color: Colors.pink)),
            Text('V 1.0.', style: TextStyle(color: Colors.pink)),
          ],
        ),
      ),
    );
  }
}

class Actor {
  final String name;
  final String imagePath;
  final String details;

  Actor({required this.name, required this.imagePath, required this.details});
}

class SecondPage extends StatelessWidget {
  final List<Actor> actors = [
    Actor(
      name: "Robert Downey Jr",
      imagePath: "images/robert1.jpg",
      details: """رابرت داونی جونیور (Robert Downey Jr.) بازیگر و تهیه‌کننده آمریکایی، در 4 آوریل 1965 در نیویورک سیتی به دنیا آمد. او پسر رابرت داونی Sr.، کارگردان و بازیگر، و الیسا آرتور، بازیگر است. داونی جونیور از سنین کودکی به دنیای هنر وارد شد و در فیلم‌های پدرش بازی کرد.

او با بازی در فیلم‌های مختلف در دهه 1980 و 1990 به شهرت رسید، از جمله "Less Than Zero" و "Chaplin"، که برای آن نامزدی جایزه اسکار را دریافت کرد. با این حال، دوران اوج او با مشکلات شخصی و اعتیاد به مواد مخدر و الکل همراه بود که منجر به چندین بازداشت و مشکلات حرفه‌ای شد.

با این حال، داونی جونیور در اوایل دهه 2000 به روند بهبودی خود ادامه داد و به تدریج به صنعت سینما بازگشت. او با نقش آیرون من (Tony Stark) در فیلم‌های مارول، به یکی از بزرگ‌ترین ستاره‌های هالیوود تبدیل شد و این نقش او را به نماد فرهنگی تبدیل کرد.

رابرت داونی جونیور همچنین در پروژه‌های مختلف دیگری مانند "Sherlock Holmes" و "The Judge" حضور داشته است. او به خاطر استعداد بازیگری و توانایی‌اش در ایفای نقش‌های پیچیده شناخته می‌شود. زندگی شخصی او شامل ازدواج با سوزان داونی در سال 2005 و داشتن دو فرزند است. داونی جونیور به عنوان یکی از موفق‌ترین و محبوب‌ترین بازیگران هالیوود شناخته می‌شود.
""",
    ),
    Actor(
      name: "Cillian Murphy",
      imagePath: "images/morfi1.jpg",
      details: """کلین مورفی (Cillian Murphy) بازیگر ایرلندی متولد 25 مه 1976 در شهر دوبلین است. او در خانواده‌ای هنری بزرگ شد و تحصیلات خود را در رشته‌ی هنرهای نمایشی در دانشگاه کورک ادامه داد. 

مورفی کار خود را با تئاتر آغاز کرد و به سرعت به تلویزیون و سینما راه یافت. او با نقش‌آفرینی در فیلم‌هایی مانند 28 Days Later و Inception شناخته شد. یکی از معروف‌ترین نقش‌های او، نقش توماس شلبی در سریال Peaky Blinders است که به شهرت جهانی او کمک کرد.

مورفی به خاطر توانایی‌های بازیگری‌اش و تنوع نقش‌هایی که ایفا کرده، مورد تحسین قرار گرفته است. او همچنین در پروژه‌های مختلفی با کارگردانان معروفی چون کریستوفر نولان همکاری کرده است. 

کلین مورفی به عنوان یکی از بازیگران برجسته و بااستعداد نسل خود شناخته می‌شود و همچنان به فعالیت‌های هنری‌اش ادامه می‌دهد.""",
    ),
    Actor(
      name: "Travis Fimmel",
      imagePath: "images/travic1.jpg",
       details: """تراویس فیمل (Travis Fimmel) بازیگر و مدل استرالیایی متولد 15 ژوئیه 1979 در شهر ایپسوویچ، کوئینزلند است. او در یک خانواده کشاورز بزرگ شد و در جوانی به دنیای مد و بازیگری وارد شد.

فیمل در ابتدا به عنوان مدل فعالیت کرد و به سرعت به شهرت رسید. او در سال 2003 به عنوان بازیگر در سریال تلویزیونی "The Beast" شناخته شد، اما شهرت اصلی او به خاطر نقش "رگنار لودبروک" در سریال تاریخی "Vikings" بود که از سال 2013 تا 2020 پخش شد. این نقش به او محبوبیت جهانی بخشید و توانایی‌های بازیگری‌اش را به نمایش گذاشت.

تراویس فیمل همچنین در فیلم‌های سینمایی مختلفی مانند "Warcraft" و "The Experiment" حضور داشته است. او به خاطر جذابیت و توانایی‌های بازیگری‌اش مورد تحسین قرار گرفته و همچنان در پروژه‌های مختلف هنری فعالیت می‌کند.
""",
    ),
    Actor(
      name: "Chris Hemsworth",
      imagePath: "images/cres1.jpg",
      details: """کریس همسورث (Chris Hemsworth) بازیگر استرالیایی در 11 اوت 1983 در ملبورن، استرالیا به دنیا آمد. او به خاطر نقش خود به عنوان ثور (Thor) در دنیای سینمایی مارول شناخته می‌شود که از سال 2011 با فیلم "Thor" آغاز شد و در چندین فیلم دیگر نیز این نقش را ایفا کرد. همسورث قبل از شهرت جهانی، در سریال‌های تلویزیونی استرالیایی مانند "Home and Away" فعالیت داشت.

او همچنین در فیلم‌های دیگری مانند "Snow White and the Huntsman"، "Rush" و "Extraction" بازی کرده است. کریس همسورث با السا پاتاکی ازدواج کرده و دارای سه فرزند است. او به خاطر جذابیت و توانایی‌های بازیگری‌اش، یکی از ستاره‌های محبوب هالیوود به شمار می‌رود.
""",
    ),
    Actor(
      name: "Anadi Armas",
      imagePath: "images/ana1.jpg",
      details: """آنادی آرمس (Anadi Armas) یک بازیگر کوبایی-اسپانیایی است که در 30 آوریل 1988 در هاوانا، کوبا به دنیا آمد. او فعالیت هنری خود را در تلویزیون کوبا آغاز کرد و سپس به اسپانیا منتقل شد، جایی که در سریال‌های مختلفی بازی کرد. آرمس با بازی در فیلم‌هایی چون "Blade Runner 2049" و "Knives Out" به شهرت جهانی رسید. او به خاطر استعداد و جذابیتش مورد توجه قرار گرفته و یکی از بازیگران برجسته نسل جدید سینما محسوب می‌شود.
""",
    ),
    Actor(
      name: "Tom Hardy",
      imagePath: "images/tom2.jpg",
      details: """تام هاردی (Tom Hardy) بازیگر و تهیه‌کننده انگلیسی در 15 سپتامبر 1977 در لندن به دنیا آمد. او پس از تحصیل در مدرسه هنر در لندن، کار خود را در تلویزیون آغاز کرد و به سرعت به سینما راه یافت. هاردی با بازی در فیلم‌هایی چون "Inception"، "The Dark Knight Rises"، "Mad Max: Fury Road" و "Venom" شناخته می‌شود. او به خاطر توانایی‌های بازیگری‌اش و نقش‌های متنوعش، جوایز متعدد را کسب کرده و یکی از بازیگران برجسته هالیوود محسوب می‌شود. هاردی همچنین به فعالیت‌های خیریه و حمایت از مسائل اجتماعی مشغول است.
""",
    ),
    Actor(
      name: "Tom Cruise",
      imagePath: "images/kros1.jpg",
       details: """تام کروز (Tom Cruise) بازیگر و تهیه‌کننده آمریکایی، در 3 ژوئیه 1962 در Syracuse، نیویورک به دنیا آمد. او از نوجوانی به بازیگری علاقه‌مند شد و با فیلم "Risky Business" در سال 1983 به شهرت رسید. کروز به خاطر نقش‌هایش در فیلم‌های موفقی مانند "Top Gun"، "Mission: Impossible"، "Jerry Maguire" و "A Few Good Men" شناخته می‌شود. او سه بار برنده جایزه اسکار شده و به عنوان یکی از بزرگ‌ترین ستاره‌های سینما در تاریخ معاصر شناخته می‌شود. تام کروز همچنین به خاطر فعالیت‌هایش در صنعت فیلم‌سازی و تولید، تأثیر زیادی بر سینما دارد.
""",
    ),
    Actor(
      name: "Jeremy Renner",
      imagePath: "images/jerem1.jpg",
      details: """جیرمی رینر (Jeremy Renner) بازیگر و تهیه‌کننده آمریکایی، در 7 ژانویه 1971 در مودیستو، کالیفرنیا به دنیا آمد. او با بازی در فیلم‌های مستقل شروع کرد و به تدریج به شهرت رسید. رینر به خاطر نقش‌هایش در فیلم‌هایی مانند "The Hurt Locker" و "The Town" شناخته می‌شود و برای هر دو نقش نامزد دریافت جایزه اسکار شد. او همچنین به عنوان کلینت بارتون / هاک‌آی در دنیای سینمایی مارول (MCU) شناخته می‌شود. جیرمی رینر علاوه بر بازیگری، در زمینه موسیقی نیز فعالیت دارد و چندین آهنگ منتشر کرده است.
""",
    ),
    Actor(
      name: "Tom Holland",
      imagePath: "images/haland1.jpg",
       details: """تام هالند (Tom Holland) بازیگر و تهیه‌کننده انگلیسی، در 1 ژوئن 1996 در Kingston upon Thames، لندن به دنیا آمد. او از سنین پایین به بازیگری علاقه‌مند شد و در سال 2008 با نقش مکس در تئاتر "Billy Elliot the Musical" شروع به کار کرد. هالند با بازی در نقش پیتر پارکر / اسپایدرمن در دنیای سینمایی مارول (MCU) به شهرت جهانی رسید و در فیلم‌های "Spider-Man: Homecoming"، "Spider-Man: Far From Home" و "Spider-Man: No Way Home" به ایفای نقش پرداخت. او به خاطر استعداد و کارهایش جوایز متعددی را کسب کرده است و به عنوان یکی از بازیگران جوان موفق شناخته می‌شود.
""",
    ),
    Actor(
      name: "Shah rokhan",
      imagePath: "images/shah1.jpg",
      details: """شاهرخ خان، بازیگر و تهیه‌کننده هندی، در 2 نوامبر 1965 در نویدا، هند به دنیا آمد. او به عنوان یکی از بزرگ‌ترین و محبوب‌ترین ستاره‌های سینمای بالیوود شناخته می‌شود. شاهرخ خان کار خود را در تلویزیون با سریال "Fauji" آغاز کرد و سپس در دهه 1990 با فیلم‌هایی مانند "Dilwale Dulhania Le Jayenge"، "My Name Is Khan" و "Chennai Express" به شهرت رسید.

او به خاطر توانایی‌های بازیگری، جذابیت و کارنامه موفقش، لقب "سلطان بالیوود" را به خود اختصاص داده است. شاهرخ خان همچنین به عنوان یک کارآفرین و انسان‌دوست شناخته می‌شود و دارای چندین بنیاد خیریه است. او متاهل است و دو فرزند دارد.
""",
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('10 great Actor'),
        backgroundColor: Colors.pink,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'Share the app') {  
              } else if (value == 'About') {
              } else if (value == 'Exit') {
                Navigator.of(context).pop();
              }
            },
            itemBuilder: (BuildContext context) {
              return {'Share the app', 'About', 'Exit'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      
      body: ListView.builder(
        itemCount: actors.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(actors[index].imagePath)),
            title: Text(actors[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(actor: actors[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Actor actor;

  DetailPage({required this.actor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(actor.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(actor.imagePath,
            width: 180,height: 180,),
            SizedBox(height: 10,),
            Text(actor.details, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}


