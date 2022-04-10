import Foundation
import UIKit

extension UISlider {
    var valorEntero: Int {
        return Int(self.value)
    }
}

extension Float {
    func redondear(_ decimales: Int) -> String {
        return String(format: "%.\(decimales)f", self)
    }
}

extension UIImageView {
    func cargarImagen(_ url: String) {
        guard let urlImagen = URL(string: url)
        else {
            return
        }
        DispatchQueue.main.async(execute: {
            do {
                let imageData = try Data(contentsOf: urlImagen)
                let image = UIImage(data: imageData)
                self.image = image
            } catch {
                print(error.localizedDescription)
            }
        })
    }
}

extension UIImage {
    convenience init (_ url: String) {
        if let urlImagen = URL(string: url) {
            do {
                let imageData = try Data(contentsOf: urlImagen)
                self.init(data: imageData)!
            } catch {
                print(error.localizedDescription)
                self.init()
            }
        } else {
            self.init()
        }
    }
}
