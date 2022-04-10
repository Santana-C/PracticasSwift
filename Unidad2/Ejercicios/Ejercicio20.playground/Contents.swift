import Foundation

let N = 4
var salida = ""
var i = 0

while ( i <= N ) {
    var j = 0
    while ( j < N - i ){
        salida = salida.appending(" ")
        j = j + 1
     }
    j = 0
    while ( j < ( i * 2 - 1) ){
        salida = salida.appending("*")
        j = j + 1
    }
    salida = salida.appending("\n")
    i = i + 1
}
print(salida)
