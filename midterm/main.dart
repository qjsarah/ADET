import 'dart:io';
import 'dart:math';
class Person {
    String _name='', _email='';

    void set name(String name) {
        this._name = name;
    }
    String get name {
        return _name;
    }
    void set email(String email) {
        this._email = email;
    }
    String get email {
        return _email;
    }
    void display(){
    }
}
class Employee extends Person {
    int _empnum=0;

    void set num(int empnum) {
        this._empnum = empnum;
    }
    int get num {
        return _empnum;
    }
    @override
    void display() {
        print('\nYour Employee Number: $_empnum');
        print('Welcome $_name');
        print('You register $_email as your username');
    }
}
class Student extends Person {
    int _studnum=0;

    void set num(int _studnum) {
          this._studnum = _studnum;
      }
    int get num {
        return _studnum;
    }
    @override
    void display() {
        print('\nYour Student Number: $_studnum');
        print('Welcome $_name');
        print('You register $_email as your username');
    }
}
void main() {
    dynamic choice = '';
    while(true){
    print('''\nWelcome, Choose to Register
    [A.] Employee
    [B.] Student
    [E.] Exit''');
    stdout.write('Enter your choice:: ');
    choice = stdin.readLineSync()!.toUpperCase();
    if (choice=='E') break;
    userDisplay(choice); //call userDisplay function
    }
} 

//function to display user choice, user login, and password change
void userDisplay(String choice) { 
    Person person = new Person();
    Employee employee = new Employee();
    Student student = new Student();
    if (choice == 'A') {
        person = employee;
    } else if (choice == 'B') {
        person = student;
    } else {
        print('Invalid choice, Enter again:');
        return;
    }
    displayDetails(person); //call user inputs

    //generate temp password
    String tempPass = passwordGenerator();
    print('Your temporary password is: $tempPass\n'); 

    userLogin(tempPass, person); //user login
    changePassword(person); //change user password
}

//function to ask user for their information
void displayDetails(Person person) {
  stdout.write('\nEnter your name: ');
  person.name = stdin.readLineSync()!;
  stdout.write('Enter your number: ');
  if (person is Employee) {
    person.num = int.parse(stdin.readLineSync()!);
  } else if (person is Student) {
    person.num = int.parse(stdin.readLineSync()!);
  }
  stdout.write("Enter your email: ");
  person.email = stdin.readLineSync()!;
  person.display();
}

//function for temporary password generator
String passwordGenerator() {
    const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*';
    Random _rnd = Random();
    return String.fromCharCodes(Iterable.generate(10, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}

//function for user login
void userLogin(String tempPass, Person person) {
    while(true){
    print('\t\t\tUSER LOGIN');
    stdout.write('Enter your username: ');
    String email = stdin.readLineSync()!;
    stdout.write('Enter your temporary password: ');
    String password = stdin.readLineSync()!;
    if (email == person.email && password == tempPass){
        print('\n\t\t\tLOGIN SUCCESS!');
        break;
    } else {
        print('\n\t\t\tLOGIN FAILED. TRY AGAIN');
    }
    }
}

//function to change password
void changePassword(Person person){
    print("Hello ${person.name}, Please change your password. ");
    stdout.write('Enter New Password: ');
    String newPass = stdin.readLineSync()!;
    print('Password changed successfully! Your new password is >>> $newPass');
    print('\t\t\tRegistration Success!');
}