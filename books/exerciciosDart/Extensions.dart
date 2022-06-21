void main(){
  
  
  String name = 'biel';
  print(name);
  
  print("\n############### T E S T  1 - Extensions #####################\n");
 
  print(name[0].toUpperCase()+name.substring(1));
  
  print(Upcase().toFirstChar(name));
  
  
  
  
  print("\n############### T E S T  2 - Extensions #####################\n");
 
  print(name.toFirstChar());
  
}
//extensao nome para a classe STRING
extension ExtensionsString on String{
  
  String toFirstChar(){
   // return value[0].toUpperCase()+value.substring(1);
      return this[0].toUpperCase()+ this.substring(1);
    
    //this entender que e a variavel passada a 'String', objeto que aplico a funcao toFirstChar
    
  }
}
  

class Upcase{
  
  toFirstChar(String value){
    return value[0].toUpperCase()+value.substring(1);
    
  }
}
