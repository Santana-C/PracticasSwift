import Foundation

func calcularDifHr(hrInicial: Int, minInicial: Int = 0, hrFinal: Int, minFinal: Int = 0) -> Int {
    return ((hrFinal * 60) + minFinal) - ((hrInicial * 60) + minInicial)
}

print(calcularDifHr(hrInicial: 12, minInicial: 3, hrFinal: 13))
