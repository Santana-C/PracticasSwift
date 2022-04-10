import Foundation

class Figura {
    init() {
        
    }
    
    public func CalcularArea() -> Double {
        return 0.0
    }
}

class Rectangulo:Figura {
    public var altura: Double
    public var base: Double
    
    init(_ Base: Double, _ Altura: Double){
        self.base = Base
        self.altura = Altura
    }
    
    override func CalcularArea() -> Double {
        let area = base * altura
        return area
    }
}

class Circunferencia:Figura {
    public var radio: Double
    
    init(_ Radio: Double){
        self.radio = Radio
    }
    
    override func CalcularArea() -> Double {
        let area = pow(radio, 2) * Double.pi
        return area
    }
}

class Triangulo:Figura {
    public var altura: Double
    public var base: Double
    
    init(_ Altura: Double, _ Base: Double){
        self.base = Base
        self.altura = Altura
    }
    
    override func CalcularArea() -> Double {
        let area = ((base * altura) / 2)
        return area
    }
}

var rectangulo1 = Rectangulo(8,6)
print(rectangulo1.CalcularArea())
var rectangulo2 = Rectangulo(4,15)
print("\(rectangulo2.CalcularArea())\n")

var circulo1 = Circunferencia(14)
print(circulo1.CalcularArea())
var circulo2 = Circunferencia(8)
print("\(circulo2.CalcularArea())\n")

var triangulo1 = Triangulo(4, 3)
print(triangulo1.CalcularArea())
var triangulo2 = Triangulo(12, 10)
print("\(triangulo2.CalcularArea())\n")

