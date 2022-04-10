import Foundation

enum Paso{
    case arriba
    case abajo
    case derecha
    case izquierda
}

var posicion = (x: 0, y: 0)
let pasos = [Paso.arriba, Paso.arriba, Paso.izquierda, Paso.abajo, Paso.izquierda]

for i in 0..<pasos.count {
    if(pasos[i] == Paso.arriba){
        posicion.y += 1
    }
    else if(pasos[i] == Paso.abajo){
        posicion.y -= 1
    }
    else if(pasos[i] == Paso.izquierda){
        posicion.x -= 1
    }
    else if(pasos[i] == Paso.derecha){
        posicion.x += 1
    }
}
print(posicion)
