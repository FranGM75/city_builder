import 'package:city_builder/EstadoJuego.dart';
import 'package:city_builder/InterfazEstadoJuego.dart';
import 'package:flutter/rendering.dart';

enum EnumEstadosJuego {
  ESTADO_PANTALLA_TITULO,
  ESTADO_MENU_INICIAL,
  ESTADO_JUEGO,
  ESTADO_MENU_PAUSA
}

class MaquinaEstados {
  InterfazEstadoJuego estadoActual;
  Size _tamanoPantalla;

  MaquinaEstados() {}

  void inicializa(Size tamanoPantalla, EnumEstadosJuego estadoInicial) {
    _tamanoPantalla = tamanoPantalla;
    cambiarEstado(estadoInicial);
  }

  void cambiarEstado(EnumEstadosJuego nuevoEstado) {
    if (nuevoEstado == EnumEstadosJuego.ESTADO_JUEGO) {
      estadoActual = EstadoJuego(_tamanoPantalla);
    }

    if (this.estadoActual == null) {
      throw Exception(
          "No se ha podido iniciar el juego. El estado no es válido.");
    }
  }

  /*void loop(Canvas lienzo) {
    estadoActual.update();
    estadoActual.render(lienzo);
  }*/

  void render(Canvas lienzo) {
    estadoActual.render(lienzo);
  }

  void update(double t) {
    estadoActual.update();
  }
}
