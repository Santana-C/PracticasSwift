import Foundation

protocol FiguraProtocol {
    func calcularPerimetro() -> Double
    func calcularArea() -> Double
    func calcularVolumen() -> Double
    func mostrarDatos() -> String
}

class Circulo : FiguraProtocol {
    private var radio: Double
    private var alturaV: Double
    
    init(Radio: Double){
        self.radio = Radio
        self.alturaV = 0.0
    }
    
    init(Radio: Double, AlturaV: Double){
        self.radio = Radio
        self.alturaV = AlturaV
    }
    
    var Radio: Double {
        get{ return self.radio }
        set{ self.radio = newValue }
    }
    
    var AlturaV: Double {
        get{ return self.alturaV }
        set{ self.alturaV = newValue }
    }
    
    func calcularPerimetro() -> Double {
        return 2 * Double.pi * self.radio
    }
    
    func calcularArea() -> Double {
        return Double.pi * pow(radio, 2)
    }
    
    func calcularVolumen() -> Double {
        return calcularArea() * self.alturaV
    }
    
    func mostrarDatos() -> String {
        if AlturaV > 0.0 {
            return "Radio: \(radio), AlturaV: \(AlturaV)"
        }
        return "Radio: \(radio)"
    }
}

class Triangulo : FiguraProtocol {
    private var base: Double
    private var altura: Double
    private var alturaV: Double
    
    init(Base: Double, Altura: Double) {
        self.base = Base
        self.altura = Altura
        self.alturaV = 0.0
    }
    
    init(Base: Double, Altura: Double, AlturaV: Double) {
        self.base = Base
        self.altura = Altura
        self.alturaV = AlturaV
    }
    
    var Base: Double {
        get { return self.base }
        set { self.base = newValue }
    }
    
    var Altura: Double {
        get { return self.altura }
        set { self.altura = newValue }
    }
    
    var AlturaV: Double {
        get { return self.alturaV }
        set { self.alturaV = newValue }
    }
    
    func calcularPerimetro() -> Double {
        let hipotenusa = sqrt(pow(base, 2.0) + pow(altura, 2.0))
        return hipotenusa + self.base + self.altura
    }
    
    func calcularArea() -> Double {
        return (self.base * self.altura) / 2
    }
    
    func calcularVolumen() -> Double {
        return calcularArea() * self.alturaV
    }
    
    func mostrarDatos() -> String {
        if AlturaV > 0.0 {
            return "Base: \(Base), Altura: \(Altura), AlturaV: \(AlturaV)"
        }
        return "Base: \(Base), Altura: \(Altura)"
    }
}

class Cuadrado: FiguraProtocol {
    private var lado: Double
    private var alturaV: Double
    
    init(Lado: Double) {
        self.lado = Lado
        self.alturaV = 0.0
    }
    
    init(Lado: Double, AlturaV: Double) {
        self.lado = Lado
        self.alturaV = AlturaV
    }
    
    var Lado: Double {
        get { return self.lado }
        set { self.lado = newValue}
    }
    
    var AlturaV: Double {
        get { return self.alturaV }
        set { self.alturaV = newValue}
    }
    
    func calcularPerimetro() -> Double {
        return lado * 4
    }
    
    func calcularArea() -> Double {
        return lado * lado
    }
    
    func calcularVolumen() -> Double {
        return lado  * lado * alturaV
    }
    
    func mostrarDatos() -> String {
        if AlturaV > 0.0 {
            return "Lado: \(Lado), AlturaV: \(AlturaV)"
        }
        return "Lado: \(Lado)"
    }
}

class Rectangulo: FiguraProtocol {
    private var base: Double
    private var altura: Double
    private var alturaV: Double
    
    init(Base: Double, Altura: Double) {
        self.base = Base
        self.altura = Altura
        self.alturaV = 0.0
    }
    
    init(Base: Double, Altura: Double, AlturaV: Double) {
        self.base = Base
        self.altura = Altura
        self.alturaV = AlturaV
    }
    
    var Base: Double {
        get { return self.base }
        set { self.base = newValue }
    }
    
    var Altura: Double {
        get { return self.altura }
        set { self.altura = newValue }
    }
    
    var AlturaV: Double {
        get { return self.alturaV }
        set { self.alturaV = newValue }
    }
    
    func calcularPerimetro() -> Double {
        return (base * 2) + (altura * 2)
    }
    
    func calcularArea() -> Double {
        return base * altura
    }
    
    func calcularVolumen() -> Double {
        return calcularArea() * alturaV
    }
    
    func mostrarDatos() -> String {
        if AlturaV > 0.0 {
            return "Base: \(Base), Altura: \(Altura), AlturaV: \(AlturaV)"
        }
        return "Base: \(Base), Altura: \(Altura)"
    }
}

class Pentagono: FiguraProtocol {
    private var lado: Double
    private var apotema: Double
    private var alturaV: Double
    
    init(Lado: Double, Apotema: Double) {
        self.lado = Lado
        self.apotema = Apotema
        self.alturaV = 0.0
    }
    
    init(Lado: Double, Apotema: Double, AlturaV: Double) {
        self.lado = Lado
        self.apotema = Apotema
        self.alturaV = AlturaV
    }
    
    var Lado: Double {
        get { return self.lado }
        set { self.lado = newValue }
    }
    
    var Apotema: Double {
        get { return self.apotema }
        set { self.apotema = newValue }
    }
    
    var AlturaV: Double {
        get { return self.alturaV }
        set { self.alturaV = newValue }
    }
    
    func calcularPerimetro() -> Double {
        return lado * 5
    }
    
    func calcularArea() -> Double {
        return (calcularPerimetro() * Apotema) / 2
    }
    
    func calcularVolumen() -> Double {
        return calcularArea() * AlturaV
    }
    
    func mostrarDatos() -> String {
        if AlturaV > 0.0 {
            return "Lado: \(Lado), Apotema: \(Apotema), AlturaV: \(AlturaV)"
        }
        return "Lado: \(Lado), Apotema: \(Apotema)"
    }
}
