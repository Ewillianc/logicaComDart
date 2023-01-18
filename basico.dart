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

  print('$n1 + $n2 = ${n1 + n2} ');
  print('$n1 - $n2 = ${n1 - n2} ');
  print('$n1 * $n2 = ${n1 * n2} ');
  print('$n1 / $n2 = ${n1 / n2} ');
  print('$n1 % $n2 = ${n1 % n2} ');
  print('$n1 ~/ $n2 = ${n1 ~/ n2} ');

  /*
   String? s = stdin.readLineSync();
    if(s!= null){
      n1 = int.parse(s);
    }
  */ 

}