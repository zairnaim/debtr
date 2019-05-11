import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Debtr',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: myColors.accentColor,
        primaryColor: Color(0xff212121),
        primarySwatch: Colors.purple,
      ),
      // home: LoginPage(title: 'Debtr'),
      home: MainPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  final String title;

  LoginPage({this.title}) {}

  @override
  LoginPageState createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Color(0xff212121),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: mytextStyles.heading1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              child: SizedBox(
                height: 3,
                width: 70,
              ),
              color: Color(0xffC158DC),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Manage Debt Between Friends",
                textAlign: TextAlign.center,
                style: mytextStyles.heading3,
              ),
            ),
          ),
          // DecoratedBox(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     image: DecorationImage(
          //       image: AssetImage('graphics/googlesignin.png'),
          //     ),
          //   ),
          // )
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: RaisedButton(
              color: Colors.white,
              child: Text(
                "Google Sign in",
                style: TextStyle(color: myColors.accentColor),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Debtr", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Material(
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to Debtr",
              style: mytextStyles.heading2d,
              textAlign: TextAlign.center,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Get Started",
                    style: mytextStyles.heading4d,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    minWidth: 250,
                    height: 50,
                    child: RaisedButton(
                      child: Text(
                        "Add Friend",
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    minWidth: 250,
                    height: 50,
                    child: RaisedButton(
                      child: Text(
                        "New Debt",
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class mytextStyles {
  static TextStyle heading1 =
      TextStyle(color: Colors.white, fontFamily: 'PT Sans', fontSize: 64);
  static TextStyle heading2 =
      TextStyle(color: Colors.white, fontFamily: 'PT Sans', fontSize: 48);
  static TextStyle heading3 =
      TextStyle(color: Colors.white, fontFamily: 'PT Sans', fontSize: 36);
  static TextStyle heading4 =
      TextStyle(color: Colors.white, fontFamily: 'PT Sans', fontSize: 24);
  static TextStyle heading1d =
      TextStyle(color: Colors.black, fontFamily: 'PT Sans', fontSize: 64);
  static TextStyle heading2d =
      TextStyle(color: Colors.black, fontFamily: 'PT Sans', fontSize: 48);
  static TextStyle heading3d =
      TextStyle(color: Colors.black, fontFamily: 'PT Sans', fontSize: 36);
  static TextStyle heading4d =
      TextStyle(color: Colors.black, fontFamily: 'PT Sans', fontSize: 24);

  static TextStyle subtitle1 =
      TextStyle(color: Colors.white, fontFamily: 'PT Sans', fontSize: 64);
  static TextStyle subtitle2 =
      TextStyle(color: Colors.white, fontFamily: 'PT Sans', fontSize: 48);
  static TextStyle subtitle3 =
      TextStyle(color: Colors.white, fontFamily: 'PT Sans', fontSize: 36);
  static TextStyle subtitle4 =
      TextStyle(color: Colors.white, fontFamily: 'PT Sans', fontSize: 24);
}

class myColors {
  static Color accentColor = Color(0xff8E24AA);
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
