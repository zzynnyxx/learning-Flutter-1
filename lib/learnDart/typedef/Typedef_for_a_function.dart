// // typedef for shopping cart and srting function

// import 'package:learn_flutter/learnDart/typedef/typedef.dart';

// typedef ShoppingCart = Map<String, List<String>>;
// typedef Sorter <T> = int Function (T a , T b);



// void main(){

//   // Shopping cart : usr -> List of items

//   ShoppingCart cart ={
//     'Alice ' : ['apple', 'banana', 'kiwi'],
//     'bob': ['milk', 'bread','eggs']
//   };


//   // sorting function : sort items by lenght of name 
//   sortByLength(a, b) => a.length - b.length ;

//   print('Before sorting : $cart');


//   //sort each user's items
//   cart.forEach((user, items){
//  items.sort(sortByLength);
//   });



//   print("After sorting: $cart");
  
  
  
//   }