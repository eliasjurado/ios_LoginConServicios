//
//  ViewControllerRegistrarUsuario1.swift
//  Proy IOS
//
//  Created by P on 10/4/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCRegistraUsuario1: UIViewController {
    var NomApe : String = ""
    var Dni : String = ""
    var Email : String = ""
    var Cel : String = ""
    var Fij : String = ""
    var FecNac : Date = Date()
    
    @IBOutlet weak var tfNomApe: UITextField!
    @IBOutlet weak var tfDni: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfCel: UITextField!
    @IBOutlet weak var tfFij: UITextField!
    @IBOutlet weak var dpFecNac: UIDatePicker!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueRegistrarUsuario2"{
            let paso = segue.destination as! VCRegistraUsuario2
            paso.NomApe = NomApe
            paso.Dni = Dni
            paso.Email = Email
            paso.Cel = Cel
            paso.Fij = Fij
            paso.FecNac = FecNac
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        confTF()
        confTG()
    }
      
    @IBAction func btnSiguiente_click(_ sender: Any) {
        NomApe = tfNomApe.text!
        Dni = tfDni.text!
        Email = tfEmail.text!
        Cel=tfCel.text!
        Fij = tfFij.text!
        FecNac = dpFecNac.date
        if NomApe==""||Dni==""||Email==""||Cel==""||Fij==""{
            crearAlerta(titulo: "Registro de Usuario", mensaje: "Todos los campos son obligatorios")
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
     //Falta decidir cuando llamar la alerta
     override func viewWillDisappear(_ animated: Bool) {
     crearAlerta(titulo: "tuprofe.pe", mensaje: "Bienvenido usuario")
     }
     */
    
    
    //ocultar teclado
    private func confTF(){
        tfNomApe.delegate = self
        tfDni.delegate = self
        tfEmail.delegate = self
        tfCel.delegate = self
    }
    private func confTG(){
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(VCRegistraUsuario1.handleTap))
        view.addGestureRecognizer(tapGesture)
        
    }
    @objc func handleTap(){
        view.endEditing(true)
    }
    
}

extension VCRegistraUsuario1 : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
