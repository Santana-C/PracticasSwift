import Foundation

protocol Vehiculo {
    var NumPlacas: String {get set}
    
    func CalcularImporte() -> Double
    
    func MostrarDatos() -> String
}

class Autobus: Vehiculo {
    var NumPlacas: String
    var PrecioKm: Double
    var CantidadKmRenta: Double
    var CantidadKmDevolucion: Double
    
    init(_ n: String, _ p: Double, _ cr: Double, _ cd: Double) {
        self.NumPlacas = n
        self.PrecioKm = p
        self.CantidadKmRenta = cr
        self.CantidadKmDevolucion = cd
    }
    
    func CalcularImporte() -> Double {
        return (CantidadKmDevolucion - CantidadKmRenta) * PrecioKm
    }
    
    func MostrarDatos() -> String {
        return "Precio por KM: \(PrecioKm), Cantidad Km Rentados: \(CantidadKmRenta), Cantidad Km Devolución: \(CantidadKmDevolucion)"
    }
}

class Tractor: Vehiculo {
    var NumPlacas: String
    var PrecioDia: Double
    var DiaRenta: Int
    var DiaDevolucion: Int
    
    init(_ n: String, _ p: Double, _ dr: Int, _ dd: Int) {
        self.NumPlacas = n
        self.PrecioDia = p
        self.DiaRenta = dr
        self.DiaDevolucion = dd
    }
    
    func CalcularImporte() -> Double {
        return Double(DiaDevolucion - DiaRenta) * PrecioDia
    }
    
    func MostrarDatos() -> String {
        return "Precio por día: \(PrecioDia), Día en el que se rentó: \(DiaRenta), Día Devolución: \(DiaDevolucion)"
    }
}

print("Renta de Autobus")
var autobus = Autobus("001", 10.1, 178.15, 190)
print(autobus.MostrarDatos())
print("Renta de Tractor")
var tractor = Tractor("002", 15.3, 7, 22)
print(tractor.MostrarDatos())
print("Devolución de Autobus")
print(autobus.CalcularImporte())
print("Devolución de Tractor")
print(tractor.CalcularImporte())
