// Assignment 1 : Library

class Book {
   List<String> title = ['Mercedes', 'RedBull', 'Ferrari'];
   List<String> author = ['Sak', 'PanhaSak', 'Hong'];

   void displayInfor(){
        print("All Book in library : ");
        print("Book Tittle and Author");
        for (int i =0 ; i < title.length ; i++){
          print("${i + 1} ${title[i]} - ${author[i]}");
            }
          }
        }

void main(){
  Book library = Book();
  library.displayInfor();
}