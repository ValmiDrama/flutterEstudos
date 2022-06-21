void main(){
  
  print("\n############### T E S T  1 - ENUMs #####################\n");
  var statusUser = StatusUser();
  
  statusUser.status(TypeStatus.OFF);
  statusUser.status(TypeStatus.ON);
  
  print("\n############### T E S T  2 - ENUMs #####################\n");
    
  var amamentandoStatus = StatusLeo();
  
  amamentandoStatus.status(AmamentandoStatus.lactante);
  amamentandoStatus.status(AmamentandoStatus.nLactante);
  
}//FIM MAIN

//ENUMS

enum TypeStatus{
  ON('On'),
  OFF('Off');
  
  final String value;
  const TypeStatus(this.value);
}


enum AmamentandoStatus{
  lactante(true),
  nLactante(false);
  
  final bool value;
  const AmamentandoStatus(this.value);
}

//CLASSES

class StatusUser{
  
  void status(TypeStatus typeStatus){
    
    if(typeStatus.value == 'On'){
      print('Usuario Online');
    }
    if(typeStatus.value == 'Off'){
      print('Usuario Offline');
    }
    
    
  }
}

class StatusLeo{
  
  void status(AmamentandoStatus  amamentandoStatus){
    
    if(amamentandoStatus.value == true){
      print('Sem LOL... BuAaaA BuaAa...');
      
    }
    if(amamentandoStatus.value == false){
      print('Hora do LOL, go Go Feeder...');
    }
    
  }
  
  
}
