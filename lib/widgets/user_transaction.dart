import 'package:flutter/material.dart';
import 'tansaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransacctions = [
    Transaction(
      id: 't1',
      title: 'New Shoe',
      amount: 200,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'id2',
      title: 'Groceries',
      amount: 500,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransacctions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransacctions),
      ],
    );
  }
}
