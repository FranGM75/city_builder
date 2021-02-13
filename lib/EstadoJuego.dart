import 'package:flutter/material.dart';

class EstadoJuego {
  static const pixelesCuadro = 32;
  static const borde = 0xFF009c08;
  static const relleno = 0xFF009c08;
  int cuadrosHorizontales;
  int cuadrosVerticales;
  List<Widget> cuadros;

  EstadoJuego(Size tamanoVentana) {
    this.cuadrosHorizontales = (tamanoVentana.width / pixelesCuadro) as int;
    this.cuadrosVerticales = (tamanoVentana.height / pixelesCuadro) as int;
    cuadros = [];
  }
}
