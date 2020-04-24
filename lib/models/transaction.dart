import 'package:flutter/foundation.dart';

class Transaction {
  final String id, title;
  final String category;
  final DateTime date;
  final int start;
  final int finish;
  final int people;

  Transaction({@required this.id, @required this.category,  this.date, @required this.title, this.start,this.finish,this.people});
}
