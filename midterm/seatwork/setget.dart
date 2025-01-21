import 'dart:io';
class Person {
  String firstName='', lastName='',address='';
  int  age=0;
  void set myFname(String firstName){
    this.firstName=firstName;
  }
  String get myFname{
    return firstName;
  }
  void set myLname(String lastName){
    this.lastName=lastName;
  }
  String get myLname{
    return lastName;
  }
  void set myAge(int age){
    this.age=age;
  }
  int get myAge{
    return age;
  }
  void set myAdress(String address){
    this.address=address;
  }
  String get myAdress{
    return address;
  }
}
void main() {
  Person p1 = new Person();
  stdout.write("Enter your first name: ");
  String fname = stdin.readLineSync()!;
  p1.myFname = fname;
  stdout.write("Enter your last name: ");
  String lname = stdin.readLineSync()!;
  p1.myLname = lname;
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  p1.myAge = age;
  stdout.write("Enter your address: ");
  String address = stdin.readLineSync()!;
  p1.myAdress = address;

  print("${p1.myFname} ${p1.myLname}, is ${p1.myAge} years of age, and currently lives at ${p1.myAdress} :D");
}