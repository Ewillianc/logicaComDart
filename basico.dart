// ignore_for_file: unused_local_variable

import 'dart:io';

main() {

  print('Operadores Dart');
  
  int n1, n2;
  
  print('Informe o primeiro numero: ');
   String? s = stdin.readLineSync();
 
   n1 = int.parse(s!);

  print('Informe o primeiro numero: ');
   s = stdin.readLineSync();
  
   n2 = int.parse(s!);
// Operadores simples

  print('$n1 + $n2 = ${n1 + n2} ');
  print('$n1 - $n2 = ${n1 - n2} ');
  print('$n1 * $n2 = ${n1 * n2} ');
  print('$n1 / $n2 = ${n1 / n2} ');
  print('$n1 % $n2 = ${n1 % n2} ');
  print('$n1 ~/ $n2 = ${n1 ~/ n2} ');
  print('- $n1 = ${-n1}');

  /*
   String? s = stdin.readLineSync();
    if(s!= null){
      n1 = int.parse(s);
    }
  */ 
  //Comparaçã0 e Operadores logicos.

  int a, b, c;

  a = 2;
  b = 3;
  c = 5;

  print(a > b);
  print(a == b);
  print(a != b);
  print(a <= 2);
  print(c == a + b);
  print(b<=c%2);

  //Logicos

  

}