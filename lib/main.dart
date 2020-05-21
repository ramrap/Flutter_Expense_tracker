import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SingleChildScrollView(
									child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                  elevation: 10,
                  color: Colors.blue,
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    child: Text(
                      'Chart ! is bro !',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
						 UserTransactions(),
						
            ], 
          ),
        ));
  }
}
