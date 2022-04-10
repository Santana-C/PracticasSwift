import Foundation

let matrizA = [ [3, 5, 8, 2], [2, 7, 9, 5], [2, 8, 9, 2], [4, 6, 7, 1] ]

var arregloDP : [Int] = []
var arregloDI : [Int] = []

var j = matrizA.count - 1
for i in 0..<matrizA.count {
    arregloDP.append(matrizA[i][i])
    arregloDI.append(matrizA[i][j])
    j -= 1
}

print(arregloDP)
print(arregloDI)
