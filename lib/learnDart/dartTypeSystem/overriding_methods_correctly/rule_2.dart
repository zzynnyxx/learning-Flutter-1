// Rule 2: Parameter Types (Consumer)
//When overriding :
// Parameter type must be same or superType


//ALLOWED

class Animal{
   void chase(Animal a){}
 }


 class HoneyBadger extends Animal {
   @override
  void chase(Object a){}
 }



//NOT ALLOWED 
 class Mouse extends Animal {}

// class Mouse extends Animal {}

// class Cat extends Animal {
//   @override
//   void chase(Mouse a) {} // too specific
// }


// Animal a = Cat();
// a.chase(Alligator()); // unsafe

// List <Cat> cats =<dynamic>[HoneyBadger()];
//corecct
//  List<dynamic> animals = [HoneyBadger (), Cat()];
// Rule
// A List<dynamic> can hold anything, but it cannot pretend to be a typed list.


// void main(){
//   List<Animal> animals =<Mouse> [Mouse()];
//   List<Cat> cats =animals as List<Cat>;
// }
