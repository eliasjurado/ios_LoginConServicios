//
//  ViewControllerRegistrarEncuesta.swift
//  Proy IOS
//
//  Created by P on 9/26/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCRegistraEncuesta: UIViewController {
    
    var listaParaLlenar : [Encuesta] = []
    
    @IBOutlet weak var tfTitulo: UITextField!
    @IBOutlet weak var tfTarget: UITextField!
    @IBOutlet weak var tfPregunta1: UITextField!
    @IBOutlet weak var tfPregunta2: UITextField!
    @IBOutlet weak var tfPregunta3: UITextField!
    @IBOutlet weak var tfPregunta4: UITextField!
    @IBOutlet weak var tfPregunta5: UITextField!
    @IBOutlet weak var btnGrabar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfTitulo.becomeFirstResponder()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "pasarInfoEncuesta"{
//            let listaActualizada = segue.destination as! VCProfesionales
//            listaActualizada.listaEncuesta = listaParaLlenar
//        }
//    }
    
    @IBAction func btnGrabar_Click(_ sender: Any) {
        let oEncuesta = Encuesta(pTitulo: self.tfTitulo.text!, pTarget: self.tfTarget.text!, pAutor: "usuario logueado"
            , pPregunta1: self.tfPregunta1.text!, pPregunta2: self.tfPregunta2.text!, pPregunta3: self.tfPregunta3.text!, pPregunta4: self.tfPregunta4.text!, pPregunta5: self.tfPregunta5.text!)
        //pasar los datos a la lista
        listaParaLlenar.append(oEncuesta)
        //mostrar alerta
        //self.MostrarAlerta(pTitulo: "Registro de Encuesta", pMensaje: "La encuesta se grabó correctamente", pControlador: self)
    }
    
    func MostrarAlerta(pTitulo : String!, pMensaje: String, pControlador:UIViewController){
        let alert = UIAlertController(title: pTitulo, message: pMensaje, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        pControlador.present(alert,animated: true,completion: nil)
    }


}
