import 'package:api_modelcreation_a/model/student_model.dart';
import 'package:flutter/material.dart';

//create a class
class HomeScreenController with ChangeNotifier {
  //studentmodel maybe null
  StudentModel? student;

  //create a map of studentmodel
  Map studentMap = {
    "name": "Alan",
    "age": 23,
    "phone": "8301945493",
    "dep": "I T",
  };

//creating a function to convert map to model
  void convertToModel() {
    student = StudentModel(
        name: studentMap["name"],
        age: studentMap["age"],
        phone: studentMap["phone"],
        dep: studentMap["dep"]);
  }
}
