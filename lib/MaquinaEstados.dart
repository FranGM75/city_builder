enum EnumEstadosJuego {
  ESTADO_PANTALLA_TITULO,
  ESTADO_MENU_INICIAL,
  ESTADO_JUEGO,
  ESTADO_MENU_PAUSA
}

class MaquinaEstados {
  EnumEstadosJuego estadoActual;

  MaquinaEstados(EnumEstadosJuego estadoInicial) {
    cambiarEstado(estadoInicial);
  }

  void cambiarEstado(EnumEstadosJuego nuevoEstado) {
    if (nuevoEstado == EnumEstadosJuego.ESTADO_JUEGO) {
      estadoActual = EnumEstadosJuego.ESTADO_JUEGO;
    }

    if (nuevoEstado == null) {
      throw Exception(
          "No se ha podido iniciar el juego. El estado no es válido.");
    }
  }
}
