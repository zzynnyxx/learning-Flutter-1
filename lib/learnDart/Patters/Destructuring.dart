// var numbers =[1,2,3,4];
// var [a,b,c,d] = numbers;


// var numbers = [1, 2, 3];
// var [a, b, c] = numbers;

// print(a); // 1
// print(b); // 2
// print(c); // 3


// var (text, [x, y]) = ('hello', [10, 20]);


// var (left, right) = ('A', 'B');

// (right, left) = (left, right);

// print(left);  // B
// print(right); // A



// Destructuring records

// switch (value){
//   case(var x,var y):
// }



// Map<String, int> scores = {
//   'math': 80,
//    'eng': 90,
//    };

// for (var MapEntry(:key, :value) in scores.entries) {
//   print('$key -> $value');
// }


sealed class Shape{

}

class Square implements Shape{
  final double size;
  Square(this.size);
}

class Circle implements Shape{
  final double radius;
  Circle(this.radius);
}

double findArea(Shape shape) => switch (shape){
  Square( size: var s) => s*s,
  Circle(radius: var r) => 3.14 * r*r,
}
;
