import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'new_transactions.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];
  void _addNewTrans(String title, double amount) {
    final nwTx = Transaction(
        amount: amount, title: title, id: '1', date: DateTime.now());
    setState(() {
      _transactions.add(nwTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTrans),
    ]);
  }
}
