import Foundation

var N = 9
var i = 1
var salida = ""

while( i < N ){
    salida = salida.appending("\(i) ").appending("\(N) ")
    i = i + 1
    N = N - 1
}

if(i == N ){
    salida = salida.appending("\(i)")
}

print(salida)
