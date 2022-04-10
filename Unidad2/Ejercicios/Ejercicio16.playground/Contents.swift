import Foundation

var caracter = "*"

if(("a"..."z").contains(caracter.lowercased())){
    let cf = caracter.lowercased()
    if(cf == "a" || cf == "e" || cf == "i" || cf == "o" || cf == "u"){
        print("Es una vocal")
    }
    else{
        print("Es una consonante")
    }
}else if(("0"..."9").contains(caracter)){
    print("Es un digito")
}
else if(caracter == "+" || caracter == "-" || caracter == "/" || caracter == "%" || caracter == "*"){
    print("Es un operador aritmético")
}
else{
    print("No es un caracter controlador")
}
