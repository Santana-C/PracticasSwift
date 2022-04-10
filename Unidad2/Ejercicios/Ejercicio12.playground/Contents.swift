import Foundation

var diasBlanquillos = 25
var diasTocino = 6

var blanquillos = diasBlanquillos > 21
var tocino = diasTocino > 7

if(blanquillos == false && tocino == false){
    print("Ambos se pueden cocinar")
}
else if(blanquillos == true && tocino == true){
    print("Debe desechar ambos")
}
else if(blanquillos == true){
    print("Debe desechar los blanquillos")
}
else if(tocino == true){
    print("Debe desechar el tocino")
}
