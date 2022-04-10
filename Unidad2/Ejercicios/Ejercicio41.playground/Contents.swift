import Foundation

enum Opciones{
    case piedra
    case papel
    case tijera
}

enum Estados{
    case gana
    case pierde
    case empata
}

func jugar(jugador1: Opciones, jugador2: Opciones) -> Estados {
    if jugador1 == jugador2 {
        return Estados.empata;
    }
    if( (jugador1 == Opciones.piedra && jugador2 == Opciones.papel) ||
        (jugador1 == Opciones.papel && jugador2 == Opciones.tijera) ||
        (jugador1 == Opciones.tijera && jugador2 == Opciones.piedra) ){
        return Estados.pierde
    }
    return Estados.gana
}

print(jugar(jugador1: Opciones.tijera, jugador2: Opciones.piedra))
