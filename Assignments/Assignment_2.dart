// Assignment 2 : Employee System

class Employee {
  int hour;
  int rateHour;
  int salary=0;
  
  Employee(this.hour, this.rateHour);

  void calculateSalary(){
    salary = hour * rateHour;
    print("Normal staff salary is ${salary} \$");
  }
}

class Manager extends Employee{
  Manager(int hour, int rateHour) : super(hour, rateHour);

 @override
     void calculateSalary(){
        salary = (hour * rateHour)*2;
         print("Manager salary is ${salary} \$ ");
   }
 }

class Developer extends Manager{
  Developer(int hour,int rateHour):super(hour,rateHour);

   @override
     void calculateSalary(){
        salary = hour * rateHour + 100;
         print("Developer salary is ${salary} \$ ");
   }
 }

void main(){
Employee Staff=Employee(8, 40);
Staff.calculateSalary();

Manager manager=Manager(8, 120);
manager.calculateSalary();

Developer dev=Developer(8, 90);
dev.calculateSalary();

}