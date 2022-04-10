import Foundation

var num = 20143831
var arreglo : [Int] = []

while num > 0 {
    arreglo.append(num % 10)
    num = num / 10
}
arreglo = arreglo.reversed()
print(arreglo)
