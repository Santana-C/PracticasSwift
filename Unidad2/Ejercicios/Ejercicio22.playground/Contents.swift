import Foundation

let x = 15

var vecesDivisible = 0
var salida = "No es primo"

var i = 1
while(i <= x/2) {
    if x % i == 0 {
        vecesDivisible += 1
    }
    i += 1
}

if(vecesDivisible <= 2 && x != 1){
    salida = "Es primo"
}
print(salida)
