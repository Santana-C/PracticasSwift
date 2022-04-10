import Foundation

var vectorA = [1, 2, 3, 10, 100]
var vectorB = [5, 2, 3, 10, 13]

var i = 0
while (i < vectorA.count){
    if(vectorB.contains(vectorA[i])){
        print(vectorA[i])
    }
    i += 1
}
