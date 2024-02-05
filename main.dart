import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI App with Flutter',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dialogText = 'Uygulamaya Hoş geldiniz!';

  void _openDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Bir mesajınız var!"),
          content: Text("Sabuha Kaya is the best teacher!"),
          actions: <Widget>[
            TextButton(
              child: Text("CLOSE"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _openText() {
    setState(() {
      dialogText = 'Merhaba ben Emre ';
    });
  }

  void _closeText() {
    setState(() {
      dialogText = 'Welcome to My App!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi-Kod 2.0!'),
        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Search action
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Settings action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Kodluyoruz!'),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: Text('Hakkımda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('İletişim'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              dialogText,
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _openDialog,
                  tooltip: 'Open Dialog',
                  child: Icon(Icons.add),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: _openText,
                  child: Text('Gizli metini Aç'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: _closeText,
                  child: Text('Gizli metini kapat'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
