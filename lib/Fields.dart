import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  String? nameInput, amountInput;
  final titlecontainer = TextEditingController();
  final amountcontainer = TextEditingController();
  void Submit(){
    if(amountcontainer.text.isNotEmpty && titlecontainer.text.isNotEmpty){
    updateFunc!(titlecontainer.text,double.parse(amountcontainer.text));
    }
    else;
  }
  Function? updateFunc;
  Fields({this.updateFunc});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Name of Item'),
            controller: titlecontainer,
            textInputAction: TextInputAction.next,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Cost of Item'),
            controller: amountcontainer,
            keyboardType: TextInputType.number,
            onSubmitted: (_)=>Submit()
          ),
          TextButton(onPressed: ()=>Submit(), child: Text('Add Transaction'))
        ],
      ),
    );
  }
}
