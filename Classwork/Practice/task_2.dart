//Task 2 : Add method
class Student{
  String name = "Sak";
  int age = 22;

  void printName(){
    print("My name is $name ");
  }
  void printAge(){
    print("I'm $name years old");
  }
}

void main(){
  Student people=Student();
  people.printName();
  people.printAge();
}