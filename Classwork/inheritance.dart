import 'dart:io';

class Andriod{
    void test(){
      print("Kotlin");
    }
}

class Ios extends Andriod{
  void ui (){
    print("Swift");
  }
}


void main(){
  Ios dev = Ios();
  stdout.write('So andriod app using ');
  dev.test();

  stdout.write('So ios app using ');
  dev.ui();
}