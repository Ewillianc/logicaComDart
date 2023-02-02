// ignore_for_file: unused_local_variable

// ignore: unused_import
import 'dart:math' ;
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
// ##1 Operadores simples

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
  // ##2 operadores relacionais e Logicos

  int a, b, c;

  a = 2;
  b = 3;
  c = 5;

  print("Relacionais");
  print(a > b);
  print(a == b);
  print(a != b);
  print(a <= 2);
  print(c == a + b);
  print(b <= c % 2);

  print(" Logicos ");
  print((a == b) || (c > a));
  print((a == b) & (c > a));
  print(!((a == b) & (c > a)));

  /* ##3 Ordem de precedência 
  () > ^ > *,/ > Relacionais  da direita para a esquerda > & > || > !.
  */

  //Triangulo
  int l2 = 0;
  bool eQ, eS, tri;

  print('Primeiro Lado: ');
  s = stdin.readLineSync();
  int l1 = int.parse(s!);

  print('Segundo Lado: ');
  //outra entrada na pratica.
  s = stdin.readLineSync();
  if (s != null) {
    l2 = int.parse(s);
  }
  print('Terceiro Lado: ');

  s = stdin.readLineSync();
  int l3 = int.parse(s!);

  tri = (l1 < (l2 + l3)) & (l2 < (l1 + l3)) & (l3 < (l1 + l2));
  eQ = (l1 == l2) & (l2 == l3);
  eS = (l1 != l2) & (l2 != l3) & (l1 != l3) & tri;

  print('O triangulo e EQUILATERO ? $eQ');
  print('O triangulo e ESCALENO ? $eS');


  // ##4 Calculo aniversario

  final now = DateTime.now();
  final berlinWallFell = now; // capturando a data atual
  
  print('Qual seu ano de nascimento');
  s = stdin.readLineSync();
  int yearBirth = int.parse(s!);

  int year =  berlinWallFell.year - yearBirth ;

  print('Você tem $year anos de idade');
  
  // ##5 Converter em Dolares

  stdout.write('cotação do dolar: '); // print sem saltar alinha

   s = stdin.readLineSync();
  double dollar = double.parse(s!);

  /*
  tive a intenção de formatar o numero ultilizando da função NumberFormat porem para 
  ultilizar precisaria importar a biblioteca (import 'package:intl/intl.dart';) e 
  adicionar nas dependencias do (pubspec.yaml) (dependencies:  intl: ^0.15.7) oque 
  não farei nesse projeto cujo a finalidade e se manter o mais simples possivel.
  porem deixarei comentato a função a seguir.
   var f = NumberFormat("###.0#", "en_US");
    print(f.format(dollar));

  */
  stdout.write('quanto Reais deseja trocar; ');
  s = stdin.readLineSync();
  double reais = double.parse(s!);

  print('Você pode comprar: ${reais/dollar}');

  // ##6 Converter F° em C° onde C=(f-32)/1.8

  print('qual a temperatura F°?');

  s = stdin.readLineSync();
  double fahrenheit = double.parse(s!);

  double celsius = (fahrenheit - 32)/1.8;

  print('A temperatura e de ${celsius}C°');

  // ##7 impostos em porcentagem

  print('qual o valor:');
  s = stdin.readLineSync();
  double preco = double.parse(s!);

  print('qual a porcentagem do imposto:');
  s = stdin.readLineSync();
  double impost = double.parse(s!);

  preco = preco + ((preco * impost)/100);

  var total = preco.toStringAsFixed(2); // manter duas casas decimais e necessario transformar em string
  
  print('total a ser pago e de $total');

  //juros simples em um emprestimo (ainda sem estrutura de repetição)

  print('Qual o valor do emprestimo');

  s = stdin.readLineSync();
  double loan = double.parse(s!);
  
  print('Percentagem do juros: ');

  s = stdin.readLineSync();
  double percentage = double.parse(s!);
  
  print('Numero de parcelas: ');
  s = stdin.readLineSync();
  int numPortion = int.parse(s!);

  var portion = (loan + ((loan * percentage)/100))/numPortion;

  print('será pago $numPortion no valor de $portion');


// Estrutura condicionais par ou impar

print('Digite um numero qualquer:');

s = stdin.readLineSync();
int numQual = int.parse(s!);

if( numQual % 2 == 0){
  print('O Número $numQual e Pár!');
}else{
  print('O Número $numQual e Impár!');
}



//Calcular IMC

stdout.write('Massa (KG): ');
 s = stdin.readLineSync();
double mass = double.parse(s!);

stdout.write('Massa (KG): ');
s = stdin.readLineSync();
double  heigh = double.parse(s!);

//import 'dart:math  // para elevar e necessario a biblioteca math
double imc = mass/ pow(heigh, 2); // elevado ao quadrado.

if(imc < 17){
  print('Muito abaixo do peso.');
}else if(imc >=17 && imc <= 18.5){
  print('Abaxo do peso ideal');
}else if(imc>=18.5 && imc < 25){
  print('Peso ideal');
}else if(imc >=25 && imc < 30){
  print('Sobrepeso');
}else if(imc >=30 && imc < 35){
  print('Obesidade');
}else if(imc >=35 && imc < 40){
  print('Obesidade severa');
}else{
  print('Obesidade Morbida');
}


// escolha Caso ( Switch Case )

print(' CRIANÇA ESPERANÇA ');
print(' Muito obrigado por ajudar ');
print(r'[1] para doar $10,00');// r transformas caracteres como $ em strings
print('[2] para doar \$25,00');// \ faz o mesmo porem com apenas um caracter
print(r'[3] para doar $50,00');
print(r'[4] para doar outros valores');
print(r'[5] para cancelar');

s = stdin.readLineSync();
String dig = s!;

switch(dig){
  case "1":{ print(r'$10,00');}
  break;
  case "2":{ print(r'$25,00');}
  break;
  case "3":{ print(r'$50,00');}
  break;
  case "4":{ print(r'Outros valores');}
  break;
  case "5":{ print(r'Cancelado');}
  break;
}

}
