


class Cat{
    void eat(){
      print("Shushi");
    }
}

class Dog extends Cat{
  @override
  void eat(){
    print("It just rawwwww");
  }
}

void main(){

Dog myMe =Dog();

myMe.eat();
}