import 'dart:io';

int calcularFatorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * calcularFatorial(n - 1);
  }
}

void main() {
  stdout.write("Digite um número: ");
  int? numero = int.tryParse(stdin.readLineSync()!);

  if (numero != null && numero >= 0) {
    int fatorial = calcularFatorial(numero);
    print("O fatorial de $numero é: $fatorial");
  } else {
    print("Por favor, insira um número válido.");
  }
}
