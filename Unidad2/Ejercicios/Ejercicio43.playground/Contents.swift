import Foundation

func maximoComunDivisor(_ a : Int, _ b : Int) -> Int {
    if b == 0 {
        return a;
    }
    return maximoComunDivisor(b, a % b)
}

func sumaFracciones(_ fracc1: (num:Int, den:Int), _ fracc2:(num:Int, den:Int)) -> (num:Int, den:Int) {
    var fraccR: (num:Int, den:Int) = (num: fracc1.num * fracc2.den + fracc1.den * fracc2.num, den: fracc1.den * fracc2.den)
    let MCD = maximoComunDivisor(fraccR.num, fraccR.den)
    if(MCD != 1) {
        fraccR.den = fraccR.den / MCD
        fraccR.num = fraccR.num / MCD
    }
    return fraccR
}

var fraccion1 = (num: 3, den: 12)
var fraccion2 = (num: 3, den: 6)
var fraccionResultante = sumaFracciones(fraccion1, fraccion2)

print("\(fraccionResultante.num)/\(fraccionResultante.den)")
