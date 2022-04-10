import Foundation

var x = 0
var y = 4

var x1 = 1
var x2 = 0
var y1 = 4
var y2 = 3

if(x >= x1 && x <= x2){
    if(y >= y1 && y <= y2){
        print("Dentro")
    }
    else{
        print("Fuera")
    }
}
else{
    print("Fuera")
}
