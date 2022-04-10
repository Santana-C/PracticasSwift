import Foundation

class FiguraL {
    private var alto: Double
    private var ancho: Double
    private var x: Double
    private var y: Double
    private var a: Double
    private var b: Double
    
    init() {
        self.alto = 0; self.ancho = 0
        self.x = 0; self.y = 0
        self.a = 0; self.b = 0
    }
    init(_ Alto: Double, _ Ancho: Double, _ Y: Double, _ X: Double) {
        self.alto = Alto
        self.ancho = Ancho
        self.x = X
        self.y = Y
        self.a = 0
        self.b = 0
    }
    
    var Alto: Double {
        get { return alto }
        set { self.alto = newValue }
    }
    
    var Ancho: Double {
        get { return ancho }
        set { self.ancho = newValue }
    }
    
    var X: Double {
        get { return x }
        set { self.x = newValue }
    }
    
    var Y: Double {
        get { return y }
        set { self.y = newValue }
    }
    
    var A: Double {
        get { return (Alto - Y) }
    }
    
    var B: Double {
        get { return (Ancho - X) }
    }
    
    func calcularArea() -> Double{
        return ((Ancho * Y) + (A * X))
    }
    
    func calcularPerimetro() -> Double{
        return (Ancho + Alto + X + Y + A + B)
    }
}
