import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  Chart(this.recentTransaction);

  List<Map<String,Object>> get groupedTransactionsValue{
    return List.generate(7, (index) {
      final weekDay =DateTime.now().subtract(Duration(days: index,));
      double totalSum=0.0;
      for (var i=0;i<recentTransaction.length;i++){
        if(recentTransaction[i].date.day==weekDay.day&&recentTransaction[i].date.month==weekDay.month){
          totalSum+=recentTransaction[i].amount;

        }
      }

      return {'day':DateFormat.E(weekDay),'amount':totalSum};
    });
  }




  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10),
      child: Row(children: <Widget>[

      ],),
    );
  }
}