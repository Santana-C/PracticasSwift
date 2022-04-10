import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtAlto: UITextField!
    @IBOutlet weak var txtAncho: UITextField!
    @IBOutlet weak var txtY: UITextField!
    @IBOutlet weak var txtX: UITextField!
    @IBOutlet weak var txtA: UITextField!
    @IBOutlet weak var txtB: UITextField!
    @IBOutlet weak var txtArea: UITextField!
    @IBOutlet weak var txtPerimetro: UITextField!
    
    private var figuraL = FiguraL()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func checkDatos() {
        do {
            let alto: Double = Double(txtAlto.text ?? "0.0") ?? 0.0
            let ancho: Double = Double(txtAncho.text ?? "0.0") ?? 0.0
            let y: Double = Double(txtY.text ?? "0.0") ?? 0.0
            let x: Double = Double(txtX.text ?? "0.0") ?? 0.0
            if(alto != 0.0 && ancho != 0.0 && y != 0.0 && x != 0.0) {
                figuraL = FiguraL(alto, ancho, y, x)
                self.txtA.text = String(figuraL.A)
                self.txtB.text = String(figuraL.B)
            }
        }catch {
            
        }
    }

    @IBAction func calcularArea(_ sender: UIButton) {
        checkDatos()
        txtArea.text = String(figuraL.calcularArea())
    }
    
    @IBAction func calcularPerimetro(_ sender: UIButton) {
        checkDatos()
        txtPerimetro.text = String(figuraL.calcularPerimetro())
    }
    
    @IBAction func cambiarValor(_ sender: UITextField) {
        checkDatos()
    }
    
    
}

