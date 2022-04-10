import Foundation

func agregar(arreglo: inout [Int], num: Int) {
    arreglo.append(num)
}

func obtener(arreglo: inout [Int]) -> Int {
    return arreglo.last.self!
}

func pop(arreglo: inout [Int]) -> Int {
    let num = arreglo.last.self!
    arreglo.removeLast()
    return num
}

var arreglo = [1,2,3,4]
agregar(arreglo: &arreglo, num: 5)
print(arreglo)
print(obtener(arreglo: &arreglo))
print(pop(arreglo: &arreglo))
print(arreglo)
