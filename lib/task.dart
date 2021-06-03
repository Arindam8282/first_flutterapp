import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String goal;
  var removeTask;
  Task(this.goal, this.removeTask);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              title: Text('Goal to achieve'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '${goal}',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                FlatButton(
                  textColor: const Color(0xFF6200EE),
                  onPressed: () {
                    removeTask(goal);
                    // Perform some action
                  },
                  child: const Text('DELETE'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
