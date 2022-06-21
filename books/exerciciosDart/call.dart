void main(){
  
  print("\n############### T E S T  1 - CALL #####################\n");
  
  Seach seach = Seach();
  seach.seach();
  
  
 //Vs Melhorada
  SeachVsM seachVsM = SeachVsM();
  seachVsM.call();
  //ou
  seachVsM();
  
}

class Seach{
    void seach()=> print('sorry, objetc not faund... ');
  }

//Vs Melhorada
class SeachVsM{
  void call() => print('VsM sorry, objetc not faund... ');
}
