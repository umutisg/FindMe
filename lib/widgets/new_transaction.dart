import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleControl = TextEditingController();

  final categoryControl = TextEditingController();
  final timeControl = TextEditingController();
  final timeControl2 = TextEditingController();
  final peopleControl = TextEditingController();

  void submitData() {
    final enteredTitle = titleControl.text;
    final enteredCategory = categoryControl.text;
    final enteredTime = int.parse(timeControl.text);
    final enteredTime2 = int.parse(timeControl2.text);
    final enteredPeople = int.parse(peopleControl.text);
    if (enteredCategory.isEmpty || enteredTitle.isEmpty) {
      return;
    }

    widget.addTx(
      enteredTitle,
      enteredCategory,
      enteredTime,
      enteredTime2,
      enteredPeople
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val) {
              //   titleInput = val;
              // },
              controller: titleControl,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Category'),
              // onChanged: (val) => amountInput = val,
              controller: categoryControl,             
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Start'),
              // onChanged: (val) => amountInput = val,
              controller: timeControl,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),),
            TextField(
              decoration: InputDecoration(labelText: 'Finish'),
              // onChanged: (val) => amountInput = val,
              controller: timeControl2,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),),
            TextField(
              decoration: InputDecoration(labelText: 'How many People you need?'),
              // onChanged: (val) => amountInput = val,
              controller: peopleControl,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),),
            FlatButton(
              onPressed: submitData,
              textColor: Colors.red,
              child: Text('Create New Event'),
            )
          ],
        ),
      ),
    );
  }
}
