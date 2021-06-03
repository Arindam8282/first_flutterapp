import 'package:flutter/material.dart';

class InputTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Add Goal'),
          content: Input(),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        cursorColor: Theme.of(context).cursorColor,
        initialValue: '',
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
