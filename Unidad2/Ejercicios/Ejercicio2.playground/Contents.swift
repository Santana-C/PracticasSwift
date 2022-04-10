import Foundation

var tiempoHora = 5; var tiempoMinutos = 56; var tiempoSegundos = 23
var distanciaMetros = 50000

var tempSegundos = tiempoSegundos;
tempSegundos += (tiempoMinutos * 60)
tempSegundos += (tiempoHora * 60 * 60)

var velocidadMS : Double = Double(distanciaMetros) / Double(tempSegundos)
var velocidadKmH = Double(velocidadMS) * 3.6
var velocidadMillaH = Double(velocidadMS) * 2.237

print("Velocidad en Mts/seg: \(velocidadMS)")
print("Velocidad en Km/h: \(velocidadKmH)")
print("Velocidad en Millas/h: \(velocidadMillaH)")
