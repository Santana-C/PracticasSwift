import Foundation

func mayorMenor(_ numA: Int, _ numB: Int, _ numC: Int) -> (menor: Int, mayor: Int) {
    var mayor = numA
    var menor = numA
    if(numB > mayor){
        mayor = numB
    }
    else{
        menor = numB
    }
    if(numC > mayor){
        mayor = numC
    }
    else{
        menor = numC
    }
    
    return (menor: menor, mayor: mayor)
}

print(mayorMenor(2, 5, 8))
