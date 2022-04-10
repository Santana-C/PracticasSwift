import Foundation

var ancho = 8
var alto = 4
var x = 2
var y = 2

var perimetro = x + alto + ancho + y + (ancho - x) + (alto - y)
var area = (ancho * y) + (x * (alto - y))

print("El perimetro es de: \(perimetro)")
print("El área es de \(area)")
