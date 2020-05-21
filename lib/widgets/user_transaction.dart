

import 'package:flutter/material.dart';


import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> transactions = [
    Transaction(
      amount: 59.99,
      id: 't1',
      title: 'accha he',
      date: DateTime.now(),
    ),
    Transaction(
      amount: 24.00,
      id: 't5',
      title: 'aise hi sexy lag rha tha',
      date: DateTime.now(),
    ),
  ];
  void _addTransaction(String title, double amount) {
    final tx = new Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      transactions.add(tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(transactions),
      ],
    );
  }
}
