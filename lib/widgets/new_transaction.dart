import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  
  final Function stateHandler;


  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.stateHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
              elevation: 10,
              child: Container(
                // margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      controller: titleController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      controller: amountController,
                    ),
                    FlatButton(
                      onPressed: () {
                        stateHandler(titleController.text,double.parse(amountController.text));
                      },
                      child: Text('Add Transaction'),
                      textColor: Colors.purple,
                    )
                  ],
                ),
              ),
            ),
    );
  }
}