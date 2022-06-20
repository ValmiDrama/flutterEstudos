void main() {
  Map<String, String> mapa = {};
  
  print(mapa);
  
  mapa.putIfAbsent('chave', ()=> 'valor');
  print(mapa);
  
  mapa['chave2']='valor2';  
  print(mapa);
  
  mapa.forEach((chave, valor)=>print('KEY: $chave VALUES: $valor'));
  
  print('CHAVES:');
  mapa.keys.forEach(print);
    print('VALORES:');
  mapa.values.forEach(print);
}
