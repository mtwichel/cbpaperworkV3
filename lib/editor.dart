import 'package:flutter/material.dart';
import 'data/data.dart';

class MoneyGroupEditor extends StatefulWidget {
  @override
  _MoneyGroupEditorState createState() => _MoneyGroupEditorState();
}

class _MoneyGroupEditorState extends State {
  MoneyGroup group;

  _MoneyGroupEditorState(){
    group = MoneyGroup('BankBag', 'Bank Bag');
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: group.getNumberOfBillTypes(),
      itemBuilder: (context, index,) {
        return Row(
          children: <Widget>[
            Text(
              group.getMultiplesBillName(index),
              // style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5),
            ),
            // Container(
            //   width: 80.0,
            //   child: TextField(
            //     keyboardType: TextInputType.number,
            //     style: DefaultTextStyle.of(context)
            //         .style
            //         .apply(fontSizeFactor: 1.5),
            //     decoration: InputDecoration(
            //       contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
            //       border: UnderlineInputBorder(),
            //     ),
            //   ),
            // ),
          ],
        ); 
      },
    );
  }
}
 