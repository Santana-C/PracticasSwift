import Foundation

var mes = 5
var dia = 11
if mes == 1 && dia >= 21 || (mes == 2 && dia <= 19) {
    print("Acuario")
} else if mes == 2 && dia >= 20 || (mes == 3 && dia <= 20) {
    print("Piscis")
} else if mes == 3 && dia >= 21 || (mes == 4 && dia <= 20) {
    print("Aries")
} else if mes == 4 && dia >= 21 || (mes == 5 && dia <= 20) {
    print("Tauro")
} else if mes == 5 && dia >= 21 || (mes == 6 && dia <= 21) {
    print("Geminis")
} else if mes == 6 && dia >= 22 || (mes == 7 && dia <= 21) {
    print("Cáncer")
} else if mes == 7 && dia >= 22 || (mes == 8 && dia <= 23) {
    print("Leo")
} else if mes == 8 && dia >= 24 || (mes == 9 && dia <= 23) {
    print("Virgo")
} else if mes == 9 && dia >= 24 || (mes == 10 && dia <= 22) {
    print("Libra")
} else if mes == 10 && dia >= 23 || (mes == 11 && dia <= 22) {
    print("Escorpio")
} else if mes == 11 && dia >= 23 || (mes == 12 && dia <= 21) {
    print("Sagitario")
} else{
    print("Capricornio")
}
