import 'dart:io';

void main() {
  // Display Msg
  for (var i = 0; i < 10; i++) {
    msgSelect();
    var input = stdin.readLineSync();
    selectedUsers(inputUser: input);
  }
}

List<Map<String, dynamic>> students = [
  {
    "name": "shahad alfayez",
    "age": 22,
    "id": 100758,
    "pass": true,
    "Gpa": 4.5
  }, // index 0
  {
    "name": "ghaida ",
    "age": 25,
    "id": 101554,
    "pass": false,
    "Gpa": 4.1
  }, // index 2
  {
    "name": "asma ",
    "age": 26,
    "id": 10544,
    "pass": false,
    "Gpa": 4.3
  }, // index 3
  {
    "name": "abdullah",
    "age": 27,
    "id": 5566415,
    "pass": true,
    "Gpa": 4.2
  }, // index 3
];

// display msg function
msgSelect() {
  print("plase select from this:");
  print(
      " 1: show all students \n 2: search by id \n 3: delete user by id \n or type exit if you want to stop the program");
}

// first Choice
printAll() {
  print("**********");
  for (var student in students) {
    print(student);
  }
}

selectedUsers({String? inputUser}) {
  //choice 1
  if (inputUser == "1") {
    printAll();
  }
  //choice 2
  else if (inputUser == "2") {
    print("you selected 2");
    print("Enter Student Id that you want to seach about");
    var searchId = num.parse(stdin.readLineSync()!);
    searchResult(searchInput: searchId);
  }
  //choice 3
  else if (inputUser == "3") {
    print("Enter Student Id that you want to remove it");
    var deleteId = int.parse(stdin.readLineSync()!);
    deleteResult(deleteInput: deleteId);
  }
  //choice 4
  else if (inputUser == "exit") {
    exit(0);
  }
}

// choice 2 function
searchResult({num? searchInput}) {
  for (var x in students) {
    if (x["id"] == searchInput) {
      print("the result");
      print(x);
      return x;
    }
  }
}

// choice 3 function
deleteResult({int? deleteInput}) {
  for (var i = 0; i < students.length; i++) {
    if (students[i]["id"] == deleteInput) {
      students.removeAt(i);
      print("deleted successfully");
    }
    print(students[i]);
  }
}
