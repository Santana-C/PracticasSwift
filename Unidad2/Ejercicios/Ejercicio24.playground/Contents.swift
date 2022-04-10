import Foundation

var arreglo = [10, 12, 33, 11, 1, 8]

var mayor = arreglo[0]
for elemento in arreglo {
    if(elemento > mayor){
        mayor = elemento
    }
}

print(mayor)
