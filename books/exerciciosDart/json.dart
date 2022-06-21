import 'dart:convert';


void main(){
  
  print("\n############### T E S T  1  DECODE #####################\n");
  
  String json = '''
  {
    "usuario":"Biel",
    "age":24,
    "products":[
          "KY", "BONECA INFLAVEL", "RACAO DOG"
    ]
  }
  ''';
  
  print(json);
  
  Map resultJsonE = jsonDecode(json);
  print(resultJsonE["usuario"]);
  
 print("\n ############### T E S T  2 ENCODE #####################\n");
  
  Map mapas = {
    'usuario':'Hallan',
    'age':69,
    'products':[
          'KY', 'MarcaPasso', 'ViagraDiBoi-O-LOL'
    ]
    
    
  };
 
  var resultJsonD = jsonEncode(mapas);
  print(resultJsonD);
  
  print('\n Produto mais ultilizado pelo \n ${mapas['usuario'].toString()} é:');
  print("${mapas['products']}");
  print('O sendo o seu favorito: \n ${mapas['products'][2].toString()}');
  
   
  
}
