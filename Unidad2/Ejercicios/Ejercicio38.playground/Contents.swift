import Foundation

func multRuso(numA : Int, numB : Int) -> Int {
    if numB == 1 {
        return numA
    }
    if numB % 2 == 0 {
        return multRuso(numA: numA * 2, numB: numB / 2)
    }
    return numA + multRuso(numA: numA * 2 , numB: numB / 2)
}

print(multRuso(numA: 27, numB: 82))
