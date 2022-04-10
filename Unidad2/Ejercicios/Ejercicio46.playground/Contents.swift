import Foundation

class Vehiculo {
    var no_serie: String
    var marca: String
    var anio: Int
    var precio: Double
    
    init(_ NoSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double) {
        self.no_serie = NoSerie
        self.marca = Marca
        self.anio = Anio
        self.precio = Precio
    }
}

class AutoCompacto:Vehiculo{
    var pasajeros: Int
    
    init(_ NoSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double, _ Pasajeros: Int) {
        self.pasajeros = Pasajeros
        super.init(NoSerie, Marca, Anio, Precio)
    }
}

class AutoLujo:Vehiculo{
    var pasajeros: Int
    
    init(_ NoSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double, _ Pasajeros: Int) {
        self.pasajeros = Pasajeros
        super.init(NoSerie, Marca, Anio, Precio)
    }
}

class Vagoneta:Vehiculo{
    var pasajeros: Int
    
    init(_ NoSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double, _ Pasajeros: Int) {
        self.pasajeros = Pasajeros
        super.init(NoSerie, Marca, Anio, Precio)
    }
}

class Camioneta:Vehiculo{
    var capacidadCarga: Double
    
    init(_ NoSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double, _ CapacidadCarga: Double) {
        self.capacidadCarga = CapacidadCarga
        super.init(NoSerie, Marca, Anio, Precio)
    }
}

var compacto = AutoCompacto("001", "Marca 1", 2020, 175000, 4)
print("Compacto:{NumSerie: \(compacto.no_serie), Marca: \(compacto.marca), Año: \(compacto.anio), Precio: \(compacto.precio), Pasajeros: \(compacto.pasajeros)}")
var lujo = AutoLujo("002", "Marca 2", 2019, 800000, 2)
print("Lujo:{NumSerie: \(lujo.no_serie), Marca: \(lujo.marca), Año: \(lujo.anio), Precio: \(lujo.precio), Pasajeros: \(lujo.pasajeros)}")
var vagoneta = Vagoneta("003", "Marca 3", 2014, 120000, 8)
print("Vagoneta:{NumSerie: \(vagoneta.no_serie), Marca: \(vagoneta.marca), Año: \(vagoneta.anio), Precio: \(vagoneta.precio), Pasajeros: \(vagoneta.pasajeros)}")
var camioneta = Camioneta("003", "Marca 3", 2014, 120000, 600)
print("Camioneta:{NumSerie: \(camioneta.no_serie), Marca: \(camioneta.marca), Año: \(camioneta.anio), Precio: \(camioneta.precio), Pasajeros: \(camioneta.capacidadCarga)}")
