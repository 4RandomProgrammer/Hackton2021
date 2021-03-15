import 'package:cli/cli.dart' as cli;
import 'dart:io';

double op_basicas(int operacao, double a, double b){
  double result = 0;
  switch(operacao){
    case 1:{
      result = a+b;
    }
    break;
    case 2:{
      result = a-b;
    }
    break;
    case 3:{
      result = a*b;
    }
    break;
    case 4:{
      result = a/b;
    }
    break;
  }
  return result;
}
void main() {
  //O que implementar:
  //- soma, subtração, multiplicação, divisão (operações básicas)
  //- raiz quadrada, log (pelo menos em base 10)

  print('Seja bem vindo a calculadora!');
  
}
