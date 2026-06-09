// Task 3 : Use constructor

class Student{
  String? name;
//Contructor
  Student(this.name);

}

void main(){
  Student people=Student("Sak");
  print("My name is ${people.name}");
}