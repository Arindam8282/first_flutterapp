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
                style: TextStyle(color: Colors.blue.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                FlatButton(
                  onPressed: () {
                    removeTask(goal);
                    // Perform some action
                  },
                  child: Text('DELETE',
                      style: TextStyle(color: Colors.red.withOpacity(0.6))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
