import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Transaction {
  final String title;
  final double amount;

  Transaction(this.title, this.amount);
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction("Mua bánh mì", 2.99),
    Transaction("Mua sách", 19.99),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quản lý tài chính'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Biểu đồ và thống kê',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.money),
                    title: Text(tx.title),
                    trailing: Text('\$${tx.amount.toStringAsFixed(2)}'),
                  ),
                );
              }).toList(),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Tên giao dịch'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Số tiền'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Xử lý thêm giao dịch
                      },
                      child: Text('Thêm giao dịch'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
