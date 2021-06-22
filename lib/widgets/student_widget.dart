import 'package:flutter/material.dart';
import 'package:flutter1/models/student.dart';

class StudentWidget extends StatelessWidget {
  Student student;
  double gpa = 0.0;
  StudentWidget(this.student) {
    gpa = student.grades.reduce((value, element) => value + element) /
        student.grades.length;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        color: Colors.redAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Student name: ${student.name}'),
            Text('Student GPA: $gpa'),
            Text('Student School name: ${student.schoolName}'),
            Text('Student Class name: ${student.className}'),
          ],
        ));
  }
}
