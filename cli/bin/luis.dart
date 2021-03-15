import 'dart:math';

//Faz a raiz quadrada
double sqrtFunc(double x) {
  x = sqrt(x);

  if (x.isNaN) {
    print('O número informado não pode ter sua raiz calculada :(');
  } else {
    return x;
  }
}

//Faz o log natural
double logImplementado(double x) {
  x = log(x);

  return x;
}
