import Foundation

var matrizA = [ [2, 0, 1], [3, 0, 0], [5, 1, 1] ]
var matrizB = [ [1, 0, 1], [1, 2, 1], [1, 1, 0] ]

var matrizS : [[Int]] = [[0,0,0],[0,0,0],[0,0,0]]
var matrizR : [[Int]] = [[0,0,0],[0,0,0],[0,0,0]]
var matrizM : [[Int]] = [[0,0,0],[0,0,0],[0,0,0]]

for i in 0..<matrizA.count {
    for j in 0..<matrizA[i].count {
        matrizS[i][j] = matrizA[i][j] + matrizB[i][j]
        matrizR[i][j] = matrizA[i][j] - matrizB[i][j]
        matrizM[i][j] = matrizA[i][0] * matrizB[0][j] + matrizA[i][1] * matrizB[1][j] + matrizA[i][2] * matrizB[2][j]
    }
}
print(matrizS)
print(matrizR)
print(matrizM)
