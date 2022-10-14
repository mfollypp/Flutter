import 'dart:math';

class SelecionaNivel {
  int numero = 0;
  int nivel = 0;

  SelecionaNivel(int n) {
    this.nivel = n;
    this.numero = Random().nextInt(100);
  }
}
