import 'package:flutter/material.dart';
import 'Classes/transaction.dart';
import 'Fields.dart';
import 'ListItems.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Transaction> completeList=[
    Transaction(32, 'Phone', DateTime.now()),
    Transaction(54, 'Shoes', DateTime.now()),
    Transaction(32, 'Phone', DateTime.now()),
    Transaction(54, 'Shoes', DateTime.now()),
    Transaction(32, 'Phone', DateTime.now()),
    Transaction(54, 'Shoes', DateTime.now()),
  ];
  void updateListFunc(String newName,double newAmount){
    var addedtx = Transaction(newAmount, newName, DateTime.now());
    setState(() {
    completeList.add(addedtx);  
    });
    }
        void remove(Transaction currentTX){
      setState(() {
        completeList.remove(currentTX);
      });
  } 
  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Fields(updateFunc: updateListFunc),
                  ListItems(completeList,remove)]);
  }
}