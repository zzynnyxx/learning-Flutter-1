void printYears (List<dynamic> years) {
  print(years);
}

void main(){
 final years =[];
 years.add(2020);
 years.add('2021');
 printYears(years); 
}

/*
Why this fails

years = [] → inferred as List<dynamic>

printYears expects List<int>

List<dynamic> ≠ List<int>

*/