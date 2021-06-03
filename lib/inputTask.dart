import 'package:flutter/material.dart';

class InputTask extends StatelessWidget {
  var addTask;
  var input = Input();
  InputTask(this.addTask);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Add Goal'),
          content: input,
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                addTask(input.myGoal.text);
                Navigator.pop(context, 'OK');
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  final myGoal = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        cursorColor: Theme.of(context).cursorColor,
        controller: myGoal,
        maxLength: 20,
        decoration: InputDecoration(
          labelText: 'Enter Your Goal',
          labelStyle: TextStyle(
            color: Color(0xFF6200EE),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6200EE)),
          ),
        ),
      ),
    );
  }
}
