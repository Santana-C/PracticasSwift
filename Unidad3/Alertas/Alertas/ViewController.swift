import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func AlertaBasica(_ sender: UIBarButtonItem) {
        let alerta = UIAlertController(title: "Título", message: "Este es el mensaje", preferredStyle: .alert)
        
        let btnEliminar = UIAlertAction(title: "Eliminar", style: .destructive) {
            _ in self.lblResult.text = "Respuesta: Eliminar"
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel){
            _ in self.lblResult.text = "CANCELADO"
        }
        let btnDefault = UIAlertAction(title: "Meh", style: .default){
            _ in self.lblResult.text = "Meh"
        }
        
        alerta.addAction(btnEliminar)
        alerta.addAction(btnCancelar)
        alerta.addAction(btnDefault)
        self.present(alerta, animated: true, completion: nil)
    }
    
    
    @IBAction func AlertaTextos(_ sender: UIBarButtonItem) {
        let alerta = UIAlertController(title: "Ingrese", message: "Ingrese las credenciales", preferredStyle: .alert)
        alerta.addTextField {
            txtCorreo in txtCorreo.placeholder = "Correo"
        }
        alerta.addTextField {
            txtContrasena in txtContrasena.placeholder = "Contraseña"
            txtContrasena.isSecureTextEntry = true
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel) {
            _ in self.lblResult.text = "CANCELADO"
        }
        let btnIngresar = UIAlertAction(title: "Ingresar", style: .default) {
            _ in let correo = alerta.textFields![0].text!
            let txtContrasena = alerta.textFields![1] as UITextField
            let contrasena = txtContrasena.text!
            self.lblResult.text = "Correo: \(correo) | Contraseña: \(contrasena)"
        }
        
        alerta.addAction(btnCancelar)
        alerta.addAction(btnIngresar)
        
        self.present(alerta, animated: true, completion: nil)
    }
    
    
    @IBAction func AlertaOpciones(_ sender: UIBarButtonItem) {
        let alerta = UIAlertController(title: "Compartir", message: "Compartir mediante...", preferredStyle: .actionSheet)
        let btnFacbook = UIAlertAction(title: "Facebook", style: .default) {
            _ in self.lblResult.text = "Compartido mediante Facebook"
        }
        let btnTwitter = UIAlertAction(title: "Twitter", style: .default) {
            _ in self.lblResult.text = "Compartido mediante Twitter"
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel) {
            _ in self.lblResult.text = "CANCELADO"
        }
        alerta.addAction(btnFacbook)
        alerta.addAction(btnTwitter)
        alerta.addAction(btnCancelar)
        self.present(alerta, animated: true, completion: nil)
    }
    
}

