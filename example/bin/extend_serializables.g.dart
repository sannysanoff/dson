// GENERATED CODE - DO NOT MODIFY BY HAND

part of extend_serializables;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$PersonSerializable extends SerializableMap {
  int get id;
  String get firstName;
  String get lastName;
  DateTime get dateOfBirth;
  void set id(int v);
  void set firstName(String v);
  void set lastName(String v);
  void set dateOfBirth(DateTime v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'dateOfBirth':
        return dateOfBirth;
    }
    throwFieldNotFoundException(__key, 'Person');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'dateOfBirth':
        dateOfBirth = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Person');
  }

  Iterable<String> get keys => PersonClassMirror.fields.keys;
}

abstract class _$EmployeeSerializable extends SerializableMap {
  double get salary;
  int get id;
  String get firstName;
  String get lastName;
  DateTime get dateOfBirth;
  void set salary(double v);
  void set id(int v);
  void set firstName(String v);
  void set lastName(String v);
  void set dateOfBirth(DateTime v);

  operator [](Object __key) {
    switch (__key) {
      case 'salary':
        return salary;
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'dateOfBirth':
        return dateOfBirth;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'salary':
        salary = __value;
        return;
      case 'id':
        id = __value;
        return;
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'dateOfBirth':
        dateOfBirth = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Employee');
  }

  Iterable<String> get keys => EmployeeClassMirror.fields.keys;
}

abstract class _$ManagerSerializable extends SerializableMap {
  List<Employee> get subordinates;
  double get salary;
  int get id;
  String get firstName;
  String get lastName;
  DateTime get dateOfBirth;
  void set subordinates(List<Employee> v);
  void set salary(double v);
  void set id(int v);
  void set firstName(String v);
  void set lastName(String v);
  void set dateOfBirth(DateTime v);

  operator [](Object __key) {
    switch (__key) {
      case 'subordinates':
        return subordinates;
      case 'salary':
        return salary;
      case 'id':
        return id;
      case 'firstName':
        return firstName;
      case 'lastName':
        return lastName;
      case 'dateOfBirth':
        return dateOfBirth;
    }
    throwFieldNotFoundException(__key, 'Manager');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'subordinates':
        subordinates = __value;
        return;
      case 'salary':
        salary = __value;
        return;
      case 'id':
        id = __value;
        return;
      case 'firstName':
        firstName = __value;
        return;
      case 'lastName':
        lastName = __value;
        return;
      case 'dateOfBirth':
        dateOfBirth = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Manager');
  }

  Iterable<String> get keys => ManagerClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_Person__Constructor([positionalParams, namedParams]) => new Person();

const $$Person_fields_id = const DeclarationMirror(name: 'id', type: int);
const $$Person_fields_firstName =
    const DeclarationMirror(name: 'firstName', type: String);
const $$Person_fields_lastName =
    const DeclarationMirror(name: 'lastName', type: String);
const $$Person_fields_dateOfBirth =
    const DeclarationMirror(name: 'dateOfBirth', type: DateTime);

const PersonClassMirror =
    const ClassMirror(name: 'Person', constructors: const {
  '': const FunctionMirror(name: '', $call: _Person__Constructor)
}, fields: const {
  'id': $$Person_fields_id,
  'firstName': $$Person_fields_firstName,
  'lastName': $$Person_fields_lastName,
  'dateOfBirth': $$Person_fields_dateOfBirth
}, getters: const [
  'id',
  'firstName',
  'lastName',
  'dateOfBirth'
], setters: const [
  'id',
  'firstName',
  'lastName',
  'dateOfBirth'
]);
_Employee__Constructor([positionalParams, namedParams]) => new Employee();

const $$Employee_fields_salary =
    const DeclarationMirror(name: 'salary', type: double);

const EmployeeClassMirror = const ClassMirror(
    name: 'Employee',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _Employee__Constructor)
    },
    fields: const {
      'salary': $$Employee_fields_salary,
      'id': $$Person_fields_id,
      'firstName': $$Person_fields_firstName,
      'lastName': $$Person_fields_lastName,
      'dateOfBirth': $$Person_fields_dateOfBirth
    },
    getters: const ['salary', 'id', 'firstName', 'lastName', 'dateOfBirth'],
    setters: const ['salary', 'id', 'firstName', 'lastName', 'dateOfBirth'],
    superclass: Person);
_Manager__Constructor([positionalParams, namedParams]) => new Manager();

const $$Manager_fields_subordinates =
    const DeclarationMirror(name: 'subordinates', type: const [List, Employee]);

const ManagerClassMirror = const ClassMirror(
    name: 'Manager',
    constructors: const {
      '': const FunctionMirror(name: '', $call: _Manager__Constructor)
    },
    fields: const {
      'subordinates': $$Manager_fields_subordinates,
      'salary': $$Employee_fields_salary,
      'id': $$Person_fields_id,
      'firstName': $$Person_fields_firstName,
      'lastName': $$Person_fields_lastName,
      'dateOfBirth': $$Person_fields_dateOfBirth
    },
    getters: const [
      'subordinates',
      'salary',
      'id',
      'firstName',
      'lastName',
      'dateOfBirth'
    ],
    setters: const [
      'subordinates',
      'salary',
      'id',
      'firstName',
      'lastName',
      'dateOfBirth'
    ],
    superclass: Employee);

// **************************************************************************
// Generator: InitMirrorsGenerator
// **************************************************************************

_initMirrors() {
  initClassMirrors({
    Person: PersonClassMirror,
    Employee: EmployeeClassMirror,
    Manager: ManagerClassMirror
  });
}
