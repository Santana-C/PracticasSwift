import Foundation

var N : Int = 10

var segAnterior = 0
var anterior = 1
var actual = 1
var salida = "1"

for _ in 1..<N {
    actual = segAnterior + anterior
    salida = salida + ", \(actual)"
    segAnterior = anterior
    anterior = actual
}
print(salida)
