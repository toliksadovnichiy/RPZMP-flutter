import 'package:flutter/material.dart';
import 'package:lab3/model_colors.dart';
import 'package:provider/provider.dart';
import "app_bar.dart";

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => ChangeColor(Color.fromRGBO(133, 133, 133, 0.9)),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Сьогодні:",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("19.09.2021",
                        style: TextStyle(
                            fontSize: 30, color: Colors.grey.shade700))
                  ],
                )),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sick_outlined,
                          size: 38.0,
                          color: Colors.grey.shade800,
                        ),
                        Text(
                          "Хворі",
                        ),
                        Text(
                          "1.123k",
                          style: TextStyle(
                            fontSize: 19,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1.1
                              ..color = Colors.red[800]!,
                          ),
                        )
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.emoji_emotions_outlined,
                          size: 38.0,
                          color: Colors.grey.shade800,
                        ),
                        Text(
                          "Одужали",
                        ),
                        Text(
                          "4.323k",
                          style: TextStyle(
                            fontSize: 19,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1.1
                              ..color = Colors.green[700]!,
                          ),
                        )
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.face_retouching_off,
                          size: 38.0,
                          color: Colors.grey.shade800,
                        ),
                        Text(
                          "Померли",
                        ),
                        Text(
                          "85k",
                          style: TextStyle(
                            fontSize: 19,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1.1
                              ..color = Colors.grey[700]!,
                          ),
                        )
                      ],
                    ))
              ],
            ),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Container(
              child: Image.asset("assets/images/graph.jpg"),
            )
          ],
        ),
      ));
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: GestureDetector(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 7),
                    child: Text(
                      "Області",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, color: Colors.grey.shade600),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        children: List.generate(
                            8,
                            (index) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    tweetAvatar("assets/images/obl.jpg"),
                                    tweetBody("Дніпропетровська",
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                                    Divider(color: Colors.grey.shade200),
                                  ],
                                ))),
                  ),
                ])),
      ));
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: GestureDetector(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 7),
                    child: Text(
                      "Країни",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, color: Colors.grey.shade600),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        children: List.generate(
                            8,
                            (index) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    tweetAvatar("assets/images/pol.jpg"),
                                    tweetBody("Польща",
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                                    Divider(color: Colors.grey.shade200),
                                  ],
                                ))),
                  ),
                ])),
      ));
}

class Screen4 extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  String? name;
  String? message;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 13),
                child: Text(
                  "Leave us a message, and we'll get in contact with you as soon as possible. ",
                  style: TextStyle(
                    fontSize: 17.5,
                    height: 1.3,
                    fontFamily: 'RobotoSlab',
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: (val) {
                    if (val != null || val.length > 0) name = val;
                  },
                  controller: t1,
                  decoration: InputDecoration(
                    fillColor: Color(0xffe6e6e6),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    hintText: 'Your name',
                    hintStyle: TextStyle(
                        color: Colors.blueGrey, fontFamily: 'RobotoSlab'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0001,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: (val) {
                    if (val != null || val.length > 0) message = val;
                  },
                  textAlign: TextAlign.start,
                  controller: t2,
                  decoration: InputDecoration(
                    fillColor: Color(0xffe6e6e6),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                    hintText: 'Your message',
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'RobotoSlab',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Card(
                color: Colors.green[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: Icon(
                          Icons.send,
                          color: Colors.white,
                        )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Center(
                            child: Text(
                          "Send",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'RobotoSlab'),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    left: 21,
                    right: 21,
                    bottom: MediaQuery.of(context).size.height * 0.034),
                child: Text(
                  "Alternatively, you can also report bugs and errors on following platforms",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    color: Colors.blueGrey[600],
                    fontSize: 17,
                    height: 1.3,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.facebook_outlined,
                      color: Colors.orange,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  GestureDetector(
                    child: Icon(Icons.facebook,
                        color: Color(0xfffb3958), size: 35),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  GestureDetector(
                    child: Icon(Icons.facebook_sharp,
                        color: Color(0xff1DA1F2), size: 35),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

class _MyHomePageState extends State<MyHomePage> {
  var counter = 0;
  var selectedPage = 0;

  final _pageOptions = [Screen1(), Screen2(), Screen3(), Screen4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "головна",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "області"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "країни"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline), label: "контакти")
          ],
          unselectedItemColor: Colors.grey.shade600,
          currentIndex: counter,
          fixedColor: Colors.blue,
          onTap: (int index) {
            setState(() {
              counter = index;
              selectedPage = index;
            });
          }),
    );
  }
}

Widget tweetAvatar(String name) {
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: CircleAvatar(
      backgroundImage: AssetImage(name),
    ),
  );
}

Widget tweetBody(String name, String text) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 2.0),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                size: 14.0,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Text(
          text,
          overflow: TextOverflow.clip,
        ),
        Container(
          margin: const EdgeInsets.only(top: 7.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment, color: Colors.grey.shade600),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ios_share, color: Colors.grey.shade600),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.grey.shade600),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share, color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
