import Foundation

class Rectangulo {
    public var largo: Double
    public var ancho: Double
    public var tiempo: Double
    
    var Area: Double {
        get {return largo * ancho}
    }
    
    init(_ Largo: Double, _ Ancho: Double) {
        largo = Largo
        ancho = Ancho
        tiempo = 0
        print("El área de la pared es de: \(Area) m2")
    }
    
    public func CalcularTiempo(_ Ventana: Rectangulo, _ Pared: Rectangulo){
        tiempo = (Pared.Area - Ventana.Area) * 10
        print("El tiempo para pintar es de: \(tiempo) minutos")
    }
}

var ventana = Rectangulo(2,1)
var pared = Rectangulo(10,5)
pared.CalcularTiempo(ventana, pared)
