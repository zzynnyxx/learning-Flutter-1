//Type alias for sorting a function
typedef Sorter<T> = int Function (T a, T b);

void main(){
  List<String> items = ['milk','bread','eggs'];

  //Use typedef for Functin type
  Sorter<String> sortByLength =(a,b) => a.length - b.length;

  items.sort(sortByLength);
  print(items);

}