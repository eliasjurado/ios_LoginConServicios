//
//  VCOlvideContrasena.swift
//  Proy IOS
//
//  Created by P on 10/5/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCOlvideContrasena: UIViewController {
    @IBOutlet weak var tfEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Enviar_click(_ sender: Any) {
        if tfEmail.text == "" {
            crearAlerta(titulo: "Restaurar contraseña", mensaje: "Ingrese email")
        }
    }
    
    // Alerta que se oculta después de 2 segundos
    func crearAlerta(titulo:String , mensaje:String){
        let Alert:UIAlertController = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        present(Alert,animated: true,completion: nil)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1){
            Alert.dismiss(animated: true, completion:nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
