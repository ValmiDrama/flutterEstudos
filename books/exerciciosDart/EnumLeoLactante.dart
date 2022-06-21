void main(){
  
  print("\n############### T E S T  1 - ENUMs #####################\n");
  var statusUser = StatusUser();
  
  statusUser.status(TypeStatus.OFF);
  print('\n');
  statusUser.status(TypeStatus.ON);
  
  
  
  
  print("\n############### T E S T  2 - ENUM-Vs2 #####################\n");
    
  var amamentandoStatus = StatusLeo();
  
  amamentandoStatus.status(AmamentandoStatus.lactante);
    print('\n');
  amamentandoStatus.status(AmamentandoStatus.nLactante);
  
}//FIM MAIN

//ENUMS

enum TypeStatus{
  ON(0, 'On'),
  OFF(1, 'Off');
  
  final String value;
  final int id;
  const TypeStatus(this.id, this.value);
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
    
    if(typeStatus.id == 0){
      print('Usuario ${typeStatus.value} \n statuscode: ${typeStatus.id}');
    }
    if(typeStatus.id == 1){
      print('Usuario ${typeStatus.value} \n statuscode: ${typeStatus.id}');
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
