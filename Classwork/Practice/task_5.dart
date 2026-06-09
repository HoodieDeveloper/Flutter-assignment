//Task 5 : Method Override 
class Developer{
  void programLanguage(){
    print("He know C++ , Pyhton , Dart , JAVA");
  }
}

class SoftwareEngineer extends Developer{
  @override
    void programLanguage(){
    print("He know Kotlin , Swift, React , Larevel");
  }
}

void main(){
  SoftwareEngineer job = SoftwareEngineer();
  job.programLanguage();
}