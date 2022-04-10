import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segEspecialidad: UISegmentedControl!
    @IBOutlet weak var imgEspecialidad: UIImageView!
    @IBOutlet weak var stepSemestre: UIStepper!
    @IBOutlet weak var lblSemestre: UILabel!
    @IBOutlet weak var sliderPrmedio: UISlider!
    @IBOutlet weak var lblPromedio: UILabel!
    @IBOutlet weak var switchIndustrial: UISwitch!
    @IBOutlet weak var lblIndustrial: UILabel!
    @IBOutlet weak var lblResultadoIndustrial: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cambiarEspecialidad(segEspecialidad)
        cambiarSemestre(stepSemestre)
        cambiarPromedio(sliderPrmedio)
        esIndustrial(switchIndustrial)
        let img = UIImage("url")
        imgEspecialidad.image = img
    }
    
    @IBAction func cambiarEspecialidad(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            imgEspecialidad.image = UIImage(named: "movil")
        case 1:
            imgEspecialidad.image = UIImage(named: "redes")
        case 2:
            imgEspecialidad.image = UIImage(systemName: "trash")
        default:
            imgEspecialidad.image = UIImage()
        }
    }
    
    @IBAction func cambiarSemestre(_ sender: UIStepper) {
        lblSemestre.text = "Semestre: \(Int(sender.value))"
    }
    
    @IBAction func cambiarPromedio(_ sender: UISlider) {
        lblPromedio.text = "Promedio: \(sender.value.redondear(2))"
    }
    
    @IBAction func esIndustrial(_ sender: UISwitch) {
        if sender.isOn {
            lblResultadoIndustrial.text = "Pff"
        } else {
            lblResultadoIndustrial.text = "Nice"
        }
    }
    
}

