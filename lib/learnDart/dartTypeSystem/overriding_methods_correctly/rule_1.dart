//Rule 1: Return Type producer 
// When overriding 
// return type must be same or subtype


//ALLOWED 
class Animal {
  Animal get parent => Animal();
}

class Cat extends Animal{
  Cat get parent => Cat ();
}





//NOT ALLOWED
/*
class Animal {
  Animal get parent => Animal();
}

class Cat extends Animal {
  Object get parent => Object();    //invalid
}


 */




