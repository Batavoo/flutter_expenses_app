import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            FlatButton(
                child: Text("Create"),
                color: const Color(0xff3978F1),
                textColor: const Color(0xffFAFAFA),
                minWidth: double.infinity,
                onPressed: () {
                  print(titleController.text + "\n");
                  print(amountController.text);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ],
        ),
      ),
    );
  }
}
