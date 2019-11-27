import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                fontFamily: 'Merriweather',
            ),
            home: MyHomePage(),
        );
    }
}

class MyHomePage extends StatelessWidget {
    final List<Transaction> transactions = [
        Transaction(
            id: 't1',
            title: 'apple pie',
            amount: 20.20,
            datetime: DateTime.now(),
        ),
        Transaction(
            id: 't2',
            title: 'thanksgiving turkey',
            amount: 65.95,
            datetime: DateTime.now(),
        ),
    ];

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
                            Column(
                                children: transactions.map((tx) {
                                    return Card(
                                        elevation: 5,
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                                            child: Container(
                                                margin: EdgeInsets.symmetric(vertical: 16.0),
                                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                                child: Text(
                                                    tx.title,
                                                ),
                                            ),
                                        ),
                                    );
                                }).toList(),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}