import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private var figura = ""
    @IBOutlet weak var pkvFigura: UIPickerView!
    @IBOutlet weak var lblDatos: UILabel!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var txtRed: UITextField!
    @IBOutlet weak var txtGreen: UITextField!
    @IBOutlet weak var txtBlue: UITextField!
    @IBOutlet weak var sldRed: UISlider!
    @IBOutlet weak var sldGreen: UISlider!
    @IBOutlet weak var sldBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pkvFigura.delegate = self
        pkvFigura.dataSource = self
        figura = figuras[0].nombre
        self.txtRed.text = String(Int(sldRed.value))
        self.txtGreen.text = String(Int(sldGreen.value))
        self.txtBlue.text = String(Int(sldBlue.value))
        colorizePicerView()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return figuras.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return figuras[row].nombre
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.figura = figuras[row].nombre
    }

    @IBAction func calculoPerimetro(_ sender: UIBarButtonItem) {
        let alerta = UIAlertController(title: "Perímetro", message: "Ingrese los datos para calcular el Perímetro", preferredStyle: .alert)
        for i in 0..<figuras[pkvFigura.selectedRow(inComponent: 0)].propiedades.count {
            alerta.addTextField {
                txt in txt.placeholder = figuras[self.pkvFigura.selectedRow(inComponent: 0)].propiedades[i]
            }
        }
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default) {
            _ in
            var figurita: FiguraProtocol
            switch self.figura{
            case "Circulo":
                let radio = Double(alerta.textFields![0].text!)
                figurita = Circulo(Radio: radio!)
            case "Cuadrado":
                let lado = Double(alerta.textFields![0].text!)
                figurita = Cuadrado(Lado: lado!)
            case "Triangulo":
                let base = Double(alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                figurita = Triangulo(Base: base!, Altura: altura!)
            case "Rectangulo":
                let base = Double(alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                figurita = Rectangulo(Base: base!, Altura: altura!)
            case "Pentagono":
                let lado = Double(alerta.textFields![0].text!)
                let apotema = Double(alerta.textFields![1].text!)
                figurita = Pentagono(Lado: lado!, Apotema: apotema!)
            default:
                figurita = Rectangulo(Base: 0.0, Altura: 0.0)
                self.lblDatos.text = ""
                self.lblResultado.text = ""
            }
            self.lblDatos.text = figurita.mostrarDatos()
            self.lblResultado.text = "Perímetro: " + String(figurita.calcularPerimetro())
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel) {
            _ in self.lblDatos.text = ""
            self.lblResultado.text = "Cálculo cancelado"
        }
        alerta.addAction(btnCalcular)
        alerta.addAction(btnCancelar)
        self.present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func calculoArea(_ sender: UIBarButtonItem) {
        let alerta = UIAlertController(title: "Área", message: "Ingrese los datos para calcular el Área", preferredStyle: .alert)
        for i in 0..<figuras[pkvFigura.selectedRow(inComponent: 0)].propiedades.count {
            alerta.addTextField {
                txt in txt.placeholder = figuras[self.pkvFigura.selectedRow(inComponent: 0)].propiedades[i]
            }
        }
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default) {
            _ in
            var figurita: FiguraProtocol
            switch self.figura{
            case "Circulo":
                let radio = Double(alerta.textFields![0].text!)
                figurita = Circulo(Radio: radio!)
            case "Cuadrado":
                let lado = Double(alerta.textFields![0].text!)
                figurita = Cuadrado(Lado: lado!)
            case "Triangulo":
                let base = Double(alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                figurita = Triangulo(Base: base!, Altura: altura!)
            case "Rectangulo":
                let base = Double(alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                figurita = Rectangulo(Base: base!, Altura: altura!)
            case "Pentagono":
                let lado = Double(alerta.textFields![0].text!)
                let apotema = Double(alerta.textFields![1].text!)
                figurita = Pentagono(Lado: lado!, Apotema: apotema!)
            default:
                figurita = Rectangulo(Base: 0.0, Altura: 0.0)
                self.lblDatos.text = ""
                self.lblResultado.text = ""
            }
            self.lblDatos.text = figurita.mostrarDatos()
            self.lblResultado.text = "Área: " + String(figurita.calcularArea())
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel) {
            _ in self.lblDatos.text = ""
            self.lblResultado.text = "Cálculo cancelado"
        }
        alerta.addAction(btnCalcular)
        alerta.addAction(btnCancelar)
        self.present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func calculoVolumen(_ sender: UIBarButtonItem) {
        let alerta = UIAlertController(title: "Volumen", message: "Ingrese los datos para calcular el Volumen", preferredStyle: .alert)
        for i in 0..<figuras[pkvFigura.selectedRow(inComponent: 0)].propiedades.count {
            alerta.addTextField {
                txt in txt.placeholder = figuras[self.pkvFigura.selectedRow(inComponent: 0)].propiedades[i]
            }
        }
        alerta.addTextField {
            txt in txt.placeholder = "Altura para volumen"
        }
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default) {
            _ in
            var figurita: FiguraProtocol
            switch self.figura{
            case "Circulo":
                let radio = Double(alerta.textFields![0].text!)
                let alturaV = Double(alerta.textFields![1].text!)
                figurita = Circulo(Radio: radio!, AlturaV: alturaV!)
            case "Cuadrado":
                let lado = Double(alerta.textFields![0].text!)
                let alturaV = Double(alerta.textFields![1].text!)
                figurita = Cuadrado(Lado: lado!, AlturaV: alturaV!)
            case "Triangulo":
                let base = Double(alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let alturaV = Double(alerta.textFields![2].text!)
                figurita = Triangulo(Base: base!, Altura: altura!, AlturaV: alturaV!)
            case "Rectangulo":
                let base = Double(alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let alturaV = Double(alerta.textFields![2].text!)
                figurita = Rectangulo(Base: base!, Altura: altura!, AlturaV: alturaV!)
            case "Pentagono":
                let lado = Double(alerta.textFields![0].text!)
                let apotema = Double(alerta.textFields![1].text!)
                let alturaV = Double(alerta.textFields![2].text!)
                figurita = Pentagono(Lado: lado!, Apotema: apotema!, AlturaV: alturaV!)
            default:
                figurita = Rectangulo(Base: 0.0, Altura: 0.0, AlturaV: 0.0)
                self.lblDatos.text = ""
                self.lblResultado.text = ""
            }
            self.lblDatos.text = figurita.mostrarDatos()
            self.lblResultado.text = "Volumen: " + String(figurita.calcularVolumen())
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel) {
            _ in self.lblDatos.text = ""
            self.lblResultado.text = "Cálculo cancelado"
        }
        alerta.addAction(btnCalcular)
        alerta.addAction(btnCancelar)
        self.present(alerta, animated: true, completion: nil)
    }
    
    private func colorizePicerView(){
        let redColor = Int(txtRed.text!)
        let greenColor = Int(txtGreen.text!)
        let blueColor = Int(txtBlue.text!)
        self.pkvFigura.backgroundColor = UIColor(red: CGFloat((redColor!/255)), green: CGFloat((greenColor!/255)), blue: CGFloat((blueColor!/255)))
    }
    
    @IBAction func changeRedValue(_ sender: UISlider) {
        self.txtRed.text = String(Int(sender.value))
        colorizePicerView()
    }
    @IBAction func changeGreenValue(_ sender: UISlider) {
        self.txtGreen.text = String(Int(sender.value))
        colorizePicerView()
    }
    @IBAction func changeBlueValue(_ sender: UISlider) {
        self.txtBlue.text = String(Int(sender.value))
        colorizePicerView()
    }
    
}

