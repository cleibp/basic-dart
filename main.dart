import 'dart:io';

enum Cor { Vermelho, Verde, Azul, Amarelo, Laranja }

void main() {
  var nome = 'Cleiton';
  var idade = 20;
  var sexo = 'M';
  var peso = 70.5;
  var ativo = true;

  var val1, val2, adicao, subtracao, multiplicacao, divisao, modulo;

  var idadeTernario;
  var idadeTer;

  var idadeIF;

  var dia;

  var a = 0;

  var b = 0;

  var m = 0;
  var n = 0;

  const PI = 3.14159265;

  // Comentário de uma linha

  /*
   * Comentário
   * de varias linhas
   */
  
    // ESCREVER NA TELA
  print('#### ESCREVER NA TELA ####');
  print('Olá Mundo');
  print('');

  // VARIÁVEIS
  print('### VARIÁVEIS E TIPOS BÁSICOS ###');
  print('Nome: $nome');
  print('Idade: $idade');
  print('Sexo: $sexo');
  print('Peso: $peso');
  print('Ativo: $ativo');
  print('');

    // CONSTANTE
  print('### CONSTANTE ###');
  print('PI: $PI');
  print('');

  // OPERACOES
  print('#### OPERACOES ####');
  stdout.write('Informe o valor 1: ');
  val1 = int.parse(stdin.readLineSync()!);

  stdout.write('Informe o valor 2: ');
  val2 = int.parse(stdin.readLineSync()!);

  adicao = val1 + val2; // Pode usar: (+, -, *, /, %)
  subtracao = val1 - val2;
  multiplicacao = val1 * val2;
  divisao = val1 / val2;
  modulo = val1 % val2;
  print('Soma: $adicao');
  print('Subtracao: $subtracao');
  print('Multiplicacao: $multiplicacao');
  print('Divisao: $divisao');
  print('Modulo: $modulo');
  print('');

  // TERNARIO
  print('### TERNARIO ###');
  stdout.write('Digite um número: ');
  idadeTernario = int.parse(stdin.readLineSync()!);
  idadeTer = idadeTernario >= 18 ? 'Maior de idade' : 'Menor de idade';
  print(idadeTer);
  print('');

  // IF ELSE IF ELSE
  print('### IF ELSE IF ELSE ###');
  stdout.write('Informe a idade: ');
  idadeIF = int.parse(stdin.readLineSync()!);
  if (idadeIF < 12) {
    print('CRIANCA');
  } else if (idadeIF >= 12 && idadeIF < 18) {
    print('ADOLESCENTE');
  } else {
    print('ADULTO');
  }
  print('');

  // CASE
  print('### CASE ###');
  stdout.write('Informe um numero 1 - 7 para semana: ');
  dia = int.parse(stdin.readLineSync()!);

  switch (dia) {
    case 1:
      print('Domingo');
      break;
    case 2:
      print('Segunda');
      break;
    case 3:
      print('Terça');
      break;
    case 4:
      print('Quarta');
      break;
    case 5:
      print('Quinta');
      break;
    case 6:
      print('Sexta');
      break;
    case 7:
      print('Sabado');
      break;
    default:
      print('Valor nao existente');
      break;
  }
  print('');

  // REPEAT
  print('### REPEAT ###');
  print('Não tem REPEAT');
  print('');

    // DO WHILE
  print('### DO WHILE ###');
  do {
    print(a);
    a = a + 1;
  } while (a < 10);
  print('');

  // WHILE
  print('### WHILE ###');
  while (b < 10) {
    print(b);
    b = b + 1;
  }

  // FOR
  print("### FOR ###");
  for (int c = 0; c <= 10; c++) {
    print(c);
  }
  print("");


    // ARRAY
  print("### ARRAY ###");
  List<int> numbers = [10, 20, 30, 40];

  for (var number in numbers) {
    print(number);
  }
  print("");
  
  // MATRIZ
  print("### MATRIZ ###");
  List<List<int>> matriz = List.generate(3, (i) => List<int>.generate(3, (j) => 0));

  // Inicialização da matriz
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      matriz[i][j] = i * 3 + j + 1;
    }
  }

  // Acesso aos elementos da matriz
  print("Elementos da matriz:");
  for (var i = 0; i < 3; i++) {
    var row = "";
    for (var j = 0; j < 3; j++) {
      row += matriz[i][j].toString() + " ";
    }
    print(row);
  }
  print("");
  

  // FUNCTION
  print("### FUNCTION ###");
  stdout.write("Digite o valor 1: ");
  m = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor 2: ");
  n = int.parse(stdin.readLineSync()!);

  int resultado = soma(m, n);
  print("A soma de $m e $n é igual a $resultado");
  print("");

  // PROCEDURE
	print("### PROCEDURE ###");
	print("Não tem PROCEDURE");
	print("");

  // PONTEIRO
  print("### PONTEIRO ###\n");
  print("Não tem PONTEIRO \n");
  print("Não é necessário liberar memória manualmente, como em C ou C++. A variável será automaticamente coletada pelo coletor de lixo quando não estiver mais em uso. \n");
  print("\n");


  // TRY CATCH
  print("### TRY CATCH ###\n");
  try {
    stdout.write("Informe o valor 1 para o dividendo: ");
    final numero1 = int.parse(stdin.readLineSync()!);

    stdout.write("Informe o valor 2 para o divisor: ");
    final numero2 = int.parse(stdin.readLineSync()!);
    
    if (numero2 == 0) {
      throw Exception('Divisão por zero não é permitida!');
    }

    final resultado = numero1 / numero2;
    print('Resultado da divisão: ${resultado.toStringAsFixed(2)}');
  } catch (e) {
    print('Ocorreu uma exceção: $e');
  }
  print("\n");
  
  // ENUM
  print("### ENUM ###\n");
  Cor minhaCor = Cor.Azul;

  switch (minhaCor) {
    case Cor.Vermelho:
      print("Minha cor favorita é vermelho.");
      break;
    case Cor.Verde:
      print("Minha cor favorita é verde.");
      break;
    case Cor.Azul:
      print("Minha cor favorita é azul.");
      break;
    case Cor.Amarelo:
      print("Minha cor favorita é amarelo.");
      break;
    case Cor.Laranja:
      print("Minha cor favorita é laranja.");
      break;
    default:
      print("Eu não tenho uma cor favorita.");
  }
  
}

// Define a soma function
int soma(int a, int b) {
  return a + b;
}


