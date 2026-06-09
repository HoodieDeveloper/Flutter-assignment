//Task 4 : Inheritacne
class Developer{
  void programLanguage(){
    print("He know C++ , Pyhton , Dart , JAVA");
  }
}

class Position extends Developer{
  void stack(){
    print("His job is Software Engineer");
  }
}

void main(){
  Position job = Position();
  job.programLanguage();
  job.stack();
}