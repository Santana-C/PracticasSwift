import Foundation

func agregar(arreglo: inout [Int], num: Int) {
    arreglo.append(num)
}

func obtener(arreglo: inout [Int]) -> Int {
    let num = arreglo.first.self!
    arreglo.removeFirst()
    return num
}

var arreglo = [1,2,3]
agregar(arreglo: &arreglo, num: 4)
print(arreglo)
obtener(arreglo: &arreglo)
print(arreglo)
