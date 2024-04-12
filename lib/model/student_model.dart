//create a modelclass for student
class StudentModel {
  String name;
  int age;
  String? phone;
  String? dep;

//showing required keyword
  StudentModel({required this.name, required this.age, this.phone, this.dep});
}
