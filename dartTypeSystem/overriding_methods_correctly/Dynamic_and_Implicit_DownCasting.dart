// what dynamic reallly means
// SKip type checking right npw -------check later


// 
// Safe version (recommended)

int getlength (Object value){
  if (value is String){
    return value.length;
  }
  throw ArgumentError('Not a String');
    

}

void main(){


}