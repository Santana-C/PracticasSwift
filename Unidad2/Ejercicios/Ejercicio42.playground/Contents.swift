import Foundation

var arrDiccionario = [["apellido":"Perea","nombre":"Alicia"],
                   ["apellido":"Flores","nombre":"Norma"],
                   ["apellido":"Noriega","nombre":"Roberto"]
]

var arreglo: [String] = []
var nombre = ""
for i in 0..<arrDiccionario.count {
    nombre = arrDiccionario[i]["nombre"]! + " " + arrDiccionario[i]["apellido"]!
    arreglo.append(nombre)
}

print(arreglo)
