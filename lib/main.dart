import 'package:city_builder/MaquinaEstados.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/game/base_game.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //MyGame game = MyGame();
  runApp(MyGame().widget);
}

class MyGame extends BaseGame {
  Size tamanoPantalla;
  MaquinaEstados me;

  MyGame() {
    inicializa;
    me = MaquinaEstados();
    me.inicializa(tamanoPantalla, EnumEstadosJuego.ESTADO_JUEGO);
  }

  Future<void> get inicializa async {
    tamanoPantalla = await Flame.util.initialDimensions();
    resize(tamanoPantalla);
  }

  @override
  void render(Canvas lienzo) {
    me.render(lienzo);
  }

  @override
  void update(double t) {
    me.update(t);
  }

  @override
  void resize(Size size) {
    tamanoPantalla = size;
    super.resize(size);
  }
}
