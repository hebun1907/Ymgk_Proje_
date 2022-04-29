import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekranbilgisi=MediaQuery.of(context);
    final double yukseklik=ekranbilgisi.size.height;
    final double genislik=ekranbilgisi.size.width;

    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.red,),

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(

                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.red),
              title: Text("Bildirimler"),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail, color: Colors.red),
              title: Text("Bize Ulaşın"),
            ),
          ],
        ),
      ),



      body: Container(

        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("resimler/back.png"),
        fit: BoxFit.cover,
    ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50,right: 10),
                  child: ElevatedButton(
                    child: Text("Haydi Başlayalım!",style: TextStyle(
                      fontSize: 25,
                      color:Colors.white70,
                      ),
                      ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(250, 60),
                      primary: Colors.red
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>sayfa2()));

                    },
                  ),
                ),
              ],
            ),


          ],
        ),

    ),


       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class sayfa2 extends StatelessWidget {
  const sayfa2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var ekranbilgisi=MediaQuery.of(context);
    final double yukseklik=ekranbilgisi.size.height;
    final double genislik=ekranbilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Yemek Defterim"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset("resimler/soup.png",width: 150,height: 150,),
                    ),
                    Container(
                      width: genislik/(1.7),
                      height: genislik/3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent
                        ),
                        child: Text("Çorbalar", style:  TextStyle(color: Colors.black, fontSize: 25),),
                        onPressed: (){

                        },
                      ),

                    ),

                  ],
                ),
              ),
              Row(

              children: [
              Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset("resimler/ana.jpg",width: 150,height: 150,),
              ),
              Container(
              width: genislik/(1.7),
              height: genislik/3,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent
                ),
              child: Text("Ana Yemekler", style:  TextStyle(color: Colors.black, fontSize: 25),),
              onPressed: (){

              },
    ),

    ),

    ],
    ),

              Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset("resimler/makarna.png",width: 150,height: 150,),
                  ),
                  Container(
                    width: genislik/(1.7),
                    height: genislik/3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent
                      ),
                      child: Text("Makarnalar", style:  TextStyle(color: Colors.black, fontSize: 25),),
                      onPressed: (){

                      },
                    ),

                  ),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset("resimler/tatli.png",width: 150,height: 150,),
                  ),
                  Container(
                    width: genislik/(1.7),
                    height: genislik/3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent
                      ),
                      child: Text("Tatlılar", style:  TextStyle(color: Colors.black, fontSize: 25),),
                      onPressed: (){

                      },
                    ),

                  ),

                ],
              ),
            ],
          ),
        ),
      ),


      // This trailing comma makes auto-formatting nicer for build methods.
    );


  }
}

