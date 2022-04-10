import Foundation
import CoreGraphics

class Empleado {
    private var hrsTrabajadas: Int
    private var sueldoHr: Double
    
    init() {
        self.hrsTrabajadas = 0
        self.sueldoHr = 0
    }
    
    var HrsTrabajadas: Int {
        get{return hrsTrabajadas}
        set{self.hrsTrabajadas = newValue}
    }
    var SueldoHr: Double {
        get{return sueldoHr}
        set{self.sueldoHr = newValue}
    }
    func CalcularSalario() -> Double {
        return Double(HrsTrabajadas) * SueldoHr
    }
}

class EmpleadoSinHorasExtras: Empleado {
    init(_ HorasTrabajo: Int, _ SueldoHora: Double) {
        super.init()
        super.HrsTrabajadas = HorasTrabajo
        super.SueldoHr = SueldoHora
    }
}

class EmpleadoConHorasDobles: Empleado {
    private var horasExtra: Int
    
    var HorasExtras: Int {
        get{return horasExtra}
        set{horasExtra = newValue}
    }
    
    init(_ HorasTrabajo: Int, _ SueldoHora: Double) {
        self.horasExtra = HorasTrabajo - 40
        super.init()
        super.HrsTrabajadas = HorasTrabajo
        super.SueldoHr = SueldoHora
    }
    
    override func CalcularSalario() -> Double {
        let pagoHorasNormales = (Double(HrsTrabajadas) - 40) * SueldoHr
        let pagoHoraExtra = Double(HrsTrabajadas) * 2 * SueldoHr
        return pagoHorasNormales + pagoHoraExtra
    }
}

class EmpleadoConHorasTriples: Empleado {
    private var horasExtra: Int
    
    var HorasExtras: Int {
        get{return horasExtra}
        set{horasExtra = newValue}
    }
    
    init(_ HorasTrabajo: Int, _ SueldoHora: Double) {
        self.horasExtra = HorasTrabajo - 40
        super.init()
        super.HrsTrabajadas = HorasTrabajo
        super.SueldoHr = SueldoHora
    }
    
    override func CalcularSalario() -> Double {
        let pagoHorasNormales = (Double(HrsTrabajadas) - 40) * SueldoHr
        let pagoHoraExtra = Double(HrsTrabajadas) * 3 * SueldoHr
        return pagoHorasNormales + pagoHoraExtra
    }
}

var empleado1 = EmpleadoSinHorasExtras(45, 3)
var empleado2 = EmpleadoConHorasDobles(45, 3)
var empleado3 = EmpleadoConHorasTriples(45, 3)
print("Horas Extras: \(empleado1.HrsTrabajadas - 40), Salario: \(empleado1.CalcularSalario())")
print("Horas Extras: \(empleado2.HrsTrabajadas - 40), Salario: \(empleado2.CalcularSalario())")
print("Horas Extras: \(empleado3.HrsTrabajadas - 40), Salario: \(empleado3.CalcularSalario())")
