import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "What's your name?"),
    );
  }
}

//final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Here is where we put all the methods for on click events

  Map<String, dynamic> testData = {'First': 'test', 'Last': 'data'};

  void _continueIsClicked() {
    // Create a map of data from the two text fields to send to the collection reference
    // test data for now

    // CollectionReference usersReference = Firestore.instance.collection('users');
    // print(usersReference);
    // usersReference.add(testData);
    setState(() {
      print("Button Pressed!");
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called.
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "What's your name?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, height: 5, fontSize: 30.0),
            ),
            Text(
              'First Name',
            ),
            Expanded(
              child: TextField(),
            ),
            Text(
              'Last Name',
            ),
            Expanded(
              child: TextField(),
            ),
            RaisedButton(
              onPressed: _continueIsClicked,
              color: Colors.purple,
              textColor: Colors.white,
              elevation: 10.0,
              highlightElevation: 10.0,
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
