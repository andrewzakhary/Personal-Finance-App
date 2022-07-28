import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'updateList.dart';
import 'Classes/transaction.dart';

class ListItems extends StatelessWidget {
  final Function removeItem;
  List<Transaction> _transactions = [];
  ListItems(this._transactions,this.removeItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: _transactions.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration:
                        BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Text(
                      '\$${_transactions[index].amount.toStringAsFixed(2)}',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _transactions[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          DateFormat('yMMMMd').format(_transactions[index].dateOfPurchase),
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () =>removeItem(_transactions[index]),
                      icon: Icon(
                        Icons.highlight_remove,
                        color: Colors.red,
                      ))
                ],
              ),
            );
          },
        ),
      );
  
  }
}
