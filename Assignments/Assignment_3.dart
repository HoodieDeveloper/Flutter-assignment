// Assignment 3 : Vechicle System

class Vehicle {
  void startEngine(){
    print("Engine starting soon...........");
  }
}

class Car extends Vehicle{
 @override
  void startEngine(){
    print("1. Redbull tototo ru Max verstaphen........");
  }
 }

class Bike extends Car{
   @override
    void startEngine(){
    print("2. Bike engine start : bram bramm!");
  }
 }

void main(){

  Vehicle EngineTesting=Vehicle();
  EngineTesting.startEngine();

  Car CarEngine=Car();
  CarEngine.startEngine();

  Bike BikeEngine=Bike();
  BikeEngine.startEngine();

}