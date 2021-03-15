import 'dart:math';

//Faz a raiz quadrada
double sqrtFunc(double x) {
  x = sqrt(x);

  if (x.isNaN) {
    print('O número informado não pode ter sua raiz calculada :(');
  }
}

//Faz o log natural
double Log(double x) {
  x = log(x);

  return x;
}
