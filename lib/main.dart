import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                fontFamily: 'Merriweather',
            ),
            home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    @override
    Widget build(BuildContext context) {
        return Container(
            padding: EdgeInsets.only(top: 30.0),
            color: Color(0xFF223640),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        Text("Expense Tracking",
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28.0,
                                            letterSpacing: 1.0,
                                            )),
                                        IconButton(
                                            icon: Icon(
                                               Icons.add,
                                               color: Colors.white,
                                            ),
                                            onPressed: () {},
                                        )
                                    ],
                                ),
                            ),
                            Card(
                                elevation: 5,
                                color: Color(0xFF4a7387),
                                child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                        margin: EdgeInsets.symmetric(vertical: 38.0),
                                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                            'this is where chart would go!',
                                            style: TextStyle(
                                                color: Colors.white,
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                            Card(
                                elevation: 5,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Container(
                                        margin: EdgeInsets.symmetric(vertical: 16.0),
                                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                            'this is a transaction!',
                                        ),
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
