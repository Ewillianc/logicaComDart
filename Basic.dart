

 print('Operadores Dart');

  int n1, n2
  String? s = 0;
  class Operacao{
    print('Informe o primeiro numero: ');
    s = stdin.readLineSync();

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
  }
  //operadores relacionais e Logicos

  int a, b, c;

  a = 2;
  b = 3;
  c = 5;
  class RelacionaisLogicos{
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

  /*  Ordem de precedência 
  () > ^ > *,/ > Relacionais  da direita para a esquerda > & > || > !.
  */
  }
  class Triangulo{
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
  }
