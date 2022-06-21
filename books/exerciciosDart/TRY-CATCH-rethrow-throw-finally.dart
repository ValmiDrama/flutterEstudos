void main(){
  
  print("\n############### T E S T  1 - TRY/CATCH #####################\n");
  
  
//   try{
//     print((24 / 0).toInt());    
    
//   }catch(e, stackStrace){
//     print(stackStrace);
    
    
//     //e <- Variavel do Erros
//     //stackStrace Pilhas de erros
    
//   }
  
  print("\n############### T E S T  2 - TRY/CATCH/rethrow/throw #####################\n");
  
  
//   try{
//     print((24 / 0).toInt());    
    
//   }catch(e){
//     print('Erro: $e');
    
    
//     //rethrow concede permissao para proxima parte(ignora erro).
//     //rethrow;    
    
//     //retirba um erro em Exception
//     throw Exception('Sorry, in R, numbers can`t be divided by 0.');
    
    
//     //e <- Erros
//     //stackStrace Pilhas de erros
    
//   }
 
  print("\n############### T E S T  3 - throw implements Exception CustomError #####################\n");
  
  Login login = Login();
  
    try{
      
      login.logar('PeterNoia', 'crack171');    
    } on PasswordError catch(e){
      print('ERROR: Falhou ao logar $e');
    } catch(e){
      print('ERROR: QUALQUER ERRO');
    } finally{
      print('\n Relatorio Enviado: Para UI ou DB');
    }
          
    
  }
  
  
  
//FIM MAIN


//Classes
class Login{
  void logar(usuario, senha){
    String user = usuario;
    String pass = senha;
    
   if(user!='PeterNoia') throw Exception(user);
   if(pass!='crack171') throw PasswordError(pass);
   if(pass.length <=5) throw PasswordError(pass);
   
   else{
      print('Logado.');
   }
  }  
}


class PasswordError implements Exception{
  
  final String error;
  PasswordError(this.error);
  
}













