import Foundation

var anio = 1900

if(anio % 400 == 0 || (anio % 4 == 0 && anio % 100 != 0)){
    print("Es bisiesto")
}
else{
    print("No es bisiesto")
}
