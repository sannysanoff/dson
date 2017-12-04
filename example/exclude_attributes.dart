library example.exclude_attributes; // this line is needed for the generator

import 'package:dson/dson.dart';

// replace `main` for the name of your file
part 'exclude_attributes.g.dart';  // this line is needed for the generator

@serializable
@cyclical
class Student extends _$StudentSerializable {
  int id;
  String name;

  List<Course> courses;
}

@serializable
@cyclical
class Course extends _$CourseSerializable {
  int id;

  DateTime beginDate;

  List<Student> students;
}

void main() {
  _initMirrors();

  var student1 = new Student()
    ..id = 1
    ..name = 'student1',
      student2 = new Student()
        ..id = 2
        ..name = 'student2',
      student3 = new Student()
        ..id = 3
        ..name = 'student3',
      course1 = new Course()
        ..id = 1
        ..beginDate = new DateTime.utc(2015, 1, 1)
        ..students = [student1, student2],
      course2 = new Course()
        ..id = 2
        ..beginDate = new DateTime.utc(2015, 1, 2)
        ..students = [student2, student3],
      course3 = new Course()
        ..id = 3
        ..beginDate = new DateTime.utc(2015, 1, 3)
        ..students = [student1, student3];

  student1.courses = [course1, course3];
  student2.courses = [course1, course2];
  student3.courses = [course2, course3];

  var students = [student1, student2, student3];

  print(toJson(students));
  /*
   will print:
    '['
      '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]},'
      '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]},'
      '{"id":3,"name":"student3","courses":[{"id":2},{"id":3}]}'
    ']'
  */
  print(toJson(student1)); // will print: '{"id":1,"name":"student1","courses":[{"id":1},{"id":3}]}'

  print(toJson(student1, depth: 'courses', exclude: 'name'));
  /* will print:
      '{'
        '"id":1,'
        '"courses":['
          '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":[{"id":1},{"id":2}]},'
          '{"id":3,"beginDate":"2015-01-03T00:00:00.000Z","students":[{"id":1},{"id":3}]}'
        ']'
      '}');
   */

  print(toJson(student1.courses, exclude: 'beginDate'));
  /* will print:
      '['
        '{"id":1,"students":[{"id":1},{"id":2}]},'
        '{"id":3,"students":[{"id":1},{"id":3}]}'
      ']');
  */

  print(toJson(student2.courses, depth: 'students', exclude: {'students': 'name'}));
  /* will print:
      '['
        '{"id":1,"beginDate":"2015-01-01T00:00:00.000Z","students":['
          '{"id":1,"courses":[{"id":1},{"id":3}]},'
          '{"id":2,"courses":[{"id":1},{"id":2}]}'
        ']},'
        '{"id":2,"beginDate":"2015-01-02T00:00:00.000Z","students":['
          '{"id":2,"courses":[{"id":1},{"id":2}]},'
          '{"id":3,"courses":[{"id":2},{"id":3}]}'
        ']}'
      ']'
   */

  print(toJson(student2.courses, depth: 'students', exclude: ['beginDate', {'students': 'name'}]));
  /* will print:
      '['
        '{"id":1,"students":['
          '{"id":1,"courses":[{"id":1},{"id":3}]},'
          '{"id":2,"courses":[{"id":1},{"id":2}]}'
        ']},'
        '{"id":2,"students":['
          '{"id":2,"name":"student2","courses":[{"id":1},{"id":2}]},'
          '{"id":3,"name":"student3","courses":[{"id":2},{"id":3}]}'
        ']}'
      ']'
   */
}