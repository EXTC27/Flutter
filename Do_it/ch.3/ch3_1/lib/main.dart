import 'package:flutter/material.dart';

// 데모 앱 수정 예제
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

//Button 예제////////////////////////////////////////////////////////////////////
class _MyApp extends State<MyApp> {
  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
            body: Center(
          child: RaisedButton(
              child: Text('$test'),
              color: _color,
              onPressed: () {
                if (_color == Colors.blue) {
                  setState(() {
                    test = 'flutter';
                    _color = Colors.amber;
                  });
                } else {
                  setState(() {
                    test = 'hello';
                    _color = Colors.blue;
                  });
                }
              }),
        )));
  }
}
////////////////////////////////////////////////////////////////////////////////

//Switch 예제////////////////////////////////////////////////////////////////////
// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyApp();
//   }
// }

// class _MyApp extends State<MyApp> {
//   var switchValue = false;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//         darkTheme: ThemeData.light(),
//         home: Scaffold(
//           body: Center(
//             child: Switch(
//                 value: switchValue,
//                 onChanged: (value) {
//                   setState(() {
//                     print(value);
//                     switchValue = value;
//                   });
//                 }),
//           ),
//         ));
//   }
// }
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Container(
//           color: Colors.white,
//           child: Center(
//               child: Text(
//             'hello\nFlutter',
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.blue, fontSize: 20),
//           )),
//         ));
//   }
// }
////////////////////////////////////////////////////////////////////////////////

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
