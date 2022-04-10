import Foundation

func vectorNum( _ num : Int ) -> [Int] {
    var vector : [Int] = []
    for i in 1...num {
        vector.append(i)
    }
    return vector
}
print(vectorNum(8))
