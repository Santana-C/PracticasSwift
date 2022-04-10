import Foundation

let matriz = [
    [3, 5, 8, 9, 2],
    [1, 4, 2, 1, 0], //4 + 2 + 1 = 7
    [4, 5, 4, 8, 1], //5 + 4 + 8 = 17
    [9, 8, 1, 0, 3], //8 + 1 + 0 = 9
    [7, 2, 1, 1, 3]
] // = 33

var suma = 0

for i in 1..<matriz.count - 1 {
    for j in 1..<matriz[i].count - 1 {
        suma += matriz[i][j]
    }
}

print(suma)
