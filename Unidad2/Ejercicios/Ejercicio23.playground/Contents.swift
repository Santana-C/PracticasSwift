import Foundation

var num = 2015
var temp = 0
var salida = ""

var i = num
while(num > 0){
    salida = salida.appending("\(temp)")
    
    temp = num % 2
    num = num / 2
}
salida.append("\(temp)")

salida = String(salida.reversed())
salida = String(salida.dropLast())

print(salida)
