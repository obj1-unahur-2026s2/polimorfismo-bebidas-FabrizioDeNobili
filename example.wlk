object tito {
  var peso = 70
  var bebidaConsumida = terere
  var dosis = 10

  method peso() { return peso }
  method cambiaPeso(nuevoPeso) { peso = nuevoPeso }

  method consumir(cantidad, bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }
  
  method velocidad() {
    return bebidaConsumida.rendimientoQueOtorga(dosis, self) * 490 / peso
  }
  method esFeliz() { return self.velocidad() >= 7 }
}
object pepe {
  var peso = 80
  var bebidaConsumida = whisky
  var dosis = 10
  var edad = 30

  method peso() { return peso }
  method cambiaPeso(nuevoPeso) { peso = nuevoPeso }
  method cumplirAnios() { edad += 1 }

  method consumir(cantidad, bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }

  method velocidad() {
    return (bebidaConsumida.rendimientoQueOtorga(dosis, self) * 490 / peso) - if (edad > 30) 10 else 0
  }
}
object whisky {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return 0.9 ** dosisConsumida
  }
}

object terere {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return 1.max(0.1 * dosisConsumida)
  }
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return if (unDeportista.peso() > 70) unDeportista.peso() * 0.01 + dosisConsumida else 0  //objeto.mensaje() siempre debe tener parentesis
    /*alternativa
    if (unDeportista.peso() > 70) {
      return unDeportista.peso() * 0.01 + dosisConsumida
    }
    else {
      return 0
    }
    */
  }
}
