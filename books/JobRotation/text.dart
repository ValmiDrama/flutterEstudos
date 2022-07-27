
void main(){
  
  print("\n############### T E S T  1 #####################\n");
  
  
  int indice = 13;
  int soma=0;
  int k = 0;
  
   while(k <indice) { 
     k=k+1;
     soma=soma+k; 
      
   } 
  
   print("Soma is: $soma"); 
  
  //Ao final do processamento, qual será o valor da variável SOMA?
  //output 'Soma is: 91'
  
   print("\n############### T E S T  2 #####################\n");
   print("\ncalcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence ou não a sequência.\n");
  
  int numero = 1;
  int f0 = 0;
  int f1 = 1;
  int f = 0;
  if(numero<0){    
      print('Valor Invalido');
    }
  else{ 
     while(f <numero) { 
       f=f0+f1;
       f0=f;
       f1=f;
       
   } 
    if(f==numero){
      print(' $f é Fibo');      
    }
    else{
      print('$f nao é Fibo');
    }
  }
  
   print("\n############### T E S T  3 #####################\n");
  
//Descubra a lógica e complete o próximo elemento:
  
// a) 1, 3, 5, 7, 8

// b) 2, 4, 8, 16, 32, 64, 128

// c) 0, 1, 4, 9, 16, 25, 36, 49

// d) 4, 16, 36, 64, 100

// e) 1, 1, 2, 3, 5, 8, 13

// f) 2,10, 12, 16, 17, 18, 19, 20
  
  print("\n############### T E S T  4 #####################\n");
  
//   Dois veículos (um carro e um caminhão) saem respectivamente de cidades opostas pela mesma rodovia. 
//   O carro de Ribeirão Preto em direção a Franca, a uma velocidade constante de 110 km/h.
//   caminhão de Franca em direção a Ribeirão Preto a uma velocidade constante de 80 km/h.
//   Quando eles se cruzarem na rodovia, qual estará mais próximo a cidade de Ribeirão Preto?
  
  
// IMPORTANTE:

// a) Considerar a distância de 100km entre a cidade de Ribeirão Preto <-> Franca.
  
// entao como carro 'carro de Ribeirão Preto em direção a Franca' spaco inicial é 0km.
// Equacao do Espaco do  Carro -> S = 0 + 110t -> 81.0480
  
// Caminhao parte de 'Franca em direção a Ribeirão Preto' spaco inicial é a distancia final 100km.
// Equacao do Espaco do  Caminhao -> S = 100 -80(t-0.083) -> 47.6960
  
// Para saber em que ponto eles se encontrao entao devemos saber qual em que instante eles se cruzam levando em conta o item b, que deve ser subtraido da equacao do espaco do caminhao.

// b) Considerar 2 pedágios como obstáculo e que o caminhão leva 5 minutos a mais para passar em cada um deles e o carro possui tag de pedágio (Sem Parar)

// Nestas condicoes tem que:
// Equacao do Espaco do Caminhao -> S = 100 -80(t-0.083) -> 47.6960
  
// c) Explique como chegou no resultado.
  
  
  // S = So + vt
  
  // (i) Carro -> S = 0 + 110t
  
  // (ii) Caminhao -> S = 100 -80(t-0.083) -> 47.6960
  
  //Encontro 110t = 100-80(t-5) -> 110t = 100 -80t +40 -> 190t = 140 -> t = 0.7368
  
  // substituindo tempo em (i) S = 0 + 110t -> 81.0480
  
  // substituindo tempo em (ii) Caminhao -> S = 100 -80(t-0.083) -> 47.6960
  
  print("\n############### T E S T  5 #####################\n");
  
//   5) Escreva um programa que inverta os caracteres de um string.
// IMPORTANTE:
// a) Essa string pode ser informada através de qualquer entrada de sua preferência ou pode ser previamente definida no código;
// b) Evite usar funções prontas, como, por exemplo, reverse;
  
  
  String palavra = "Flutter";
  late String palavraReverse;
  
  // 1 Metodo Ultilizando reverse
  
  palavraReverse = palavra.split("").reversed.join("");
  
  print(palavra);
  print(palavraReverse);
  
  // 2 Metodo Ultilizando For e lista de String com sistema de contagem.
  
 
  List<String> palavraSplit = palavra.split("");
  int nameLength = palavraSplit.length-1;
    
  for(var i=0;i<palavraSplit.length;i++){
    for(var j=0; j<palavraSplit[i].length;j++){
      print(palavraSplit[i][j]);
    }
        
  }
   
  print('Reverser:');
 
  for(var a=nameLength;a>=0;a--){  
    print(palavraSplit[a]);
  
  }
  
  
}//FIM MAIN
