import 'package:cli/cli.dart' as cli;
import 'dart:io';
import 'luis.dart';

double op_basicas(String operacao, double a, double b){
  double result = 0;
  switch(operacao){
    case 'Soma':{
      result = a+b;
      print('$result');
    }
    break;
    case 'Sub':{
      result = a-b;
      print('$result');
    }
    break;
    case 'Mul':{
      result = a*b;
      print('$result');
    }
    break;
    case 'Div':{
      result = a/b;
      print('$result');
    }
    break;
    case 'Raiz':{
      result = sqrtFunc(a);
      print('$result');
    }
    break;
    case 'Log':{
      result = logImplementado(a);
      print('$result');
    }
    break;
    default:{
      result = 0;
      print('Operação Inválida!');
    }
  }
  return result;
}
void main() {
  //O que implementar:
  //- soma, subtração, multiplicação, divisão (operações básicas)
  //- raiz quadrada, log (pelo menos em base 10)
  print('Seja bem vindo a calculadora!');
  String operacao = '0';
  String escolha = 'Nao';
  double result = 0;
  double num_a = 0;
  double num_b = 0;
  bool a = false;
  while(true){
    do{
      a = false;
      try {
        print('- OPERAÇÕES -\nSoma, Sub, Mul, Div, Raiz, Log, Finaliza');
        print('Digite uma operação: ');
        operacao = stdin.readLineSync();
        if(operacao == 'Finaliza'){
          return;
        }
        if(escolha != 'Sim'){
          print('Digite um número: ');
          num_a = double.parse(stdin.readLineSync());
        }else{
          num_a = result;
        }
          if(operacao != 'Raiz' && operacao != 'Log'){
            print('Digite um número: ');
            num_b = double.parse(stdin.readLineSync());
          }
      } catch (FormatException) {
        a = true;
        print('Entrada Inválida');
      }
    }while(a);
    result = op_basicas(operacao, num_a, num_b);
    print('Gostaria de continuar com o rasultado atual? (Sim ou Nao)');
    escolha = stdin.readLineSync();
  }
}
