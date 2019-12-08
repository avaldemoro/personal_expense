import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        Transaction(
            id: 't3',
            title: 'treats',
            amount: 5.00,
            datetime: DateTime.now(),
        ),
    ];

    @override
    Widget build(BuildContext context) {
        var dateTimeFormatter = new DateFormat("E, MMMM d, y").add_jm();
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
                                            'this is where chart would gooooo!',
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
                                        child: Row(children: <Widget>[
                                            Container(
                                                child: Text(
                                                    '\$ ${tx.amount.toStringAsFixed(2)}',
                                                    style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                            ),
                                            Container(
                                                child: Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                                                    child: Container(
                                                        margin: EdgeInsets.symmetric(vertical: 16.0),
                                                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                                                        child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                                Text(
                                                                    tx.title,
                                                                    style: TextStyle(
                                                                        fontSize: 16.0,
                                                                    ),
                                                                ),
                                                                Text(
                                                                    dateTimeFormatter.format(tx.datetime),
                                                                    style: TextStyle(
                                                                        color: Color(0xFFb3b3b3),
                                                                        fontSize: 12.0,
                                                                    ),
                                                                ),
                                                            ],
                                                        ),
                                                    ),
                                                ),
                                            ),
                                        ],)
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