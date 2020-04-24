// import 'package:flutter/material.dart';
// import 'package:harcama/models/transaction.dart';
// import 'package:harcama/widgets/chart_bar.dart';
// import 'package:intl/intl.dart';

// class Chart extends StatelessWidget {
//   final List<Transaction> recentTransactions;

//   Chart(
//     this.recentTransactions,
//   );

//   List<Map<String, Object>> get groupTransactionsValues {
//     return List.generate(7, (index) {
//       final weekDay = DateTime.now().subtract(
//         Duration(days: index),
//       );
//       double totalSum = 0.0;

//       for (var i = 0; i < recentTransactions.length; i++) {
//         if (recentTransactions[i].date.day == weekDay.day &&
//             recentTransactions[i].date.month == weekDay.month &&
//             recentTransactions[i].date.year == weekDay.year) {
//           totalSum += recentTransactions[i].category;
//         }
//       }

//       return {
//         'day': DateFormat.E().format(weekDay).substring(0, 1),
//         'amount': totalSum,
//       };
//     });
//   }

//   double get totalSpending {
//     return groupTransactionsValues.fold(0.0, (sum, item) {
//       return sum + item['amount'];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 6,
//       margin: EdgeInsets.all(20),
//       child: Container(
         
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: groupTransactionsValues.map((data) {
//           return Flexible(
//               fit: FlexFit.tight,
//               child: ChartBar(
//               data['day'],
//               data['amount'],
//               totalSpending == 0.0 ? 0.0 :  (data['amount'] as double) / totalSpending
//             ),
//           );
//         }).toList()),
//       ),
//     );
//   }
// }
