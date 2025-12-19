//Tpe alias for  Shoppping map
typedef ShoppingCart = Map < String , List<String>>;

void main(){
  ShoppingCart cart ={
    'fruits' : ['apple', 'banana'],
    'vegetables' : ['carrot', 'brocoli'],
  };

  print(cart);
}