//
//  ViewControllerRegistrarUsuario2.swift
//  Proy IOS
//
//  Created by P on 10/4/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCRegistraUsuario2: UIViewController {

    var NomApe : String = ""
    var Dni : String = ""
    var Email : String = ""
    var Cel : String = ""
    var Fij : String = ""
    var FecNac : Date = Date()
    
    var Dir : String = ""
    var Dis : String = ""
    var Cont : String = ""
    var Conf : String = ""
    
    @IBOutlet weak var tfDireccion: UITextField!
    @IBOutlet weak var tfDistrito: UITextField!
    @IBOutlet weak var tfContrasena: UITextField!
    @IBOutlet weak var tfConfirmar: UITextField!
    @IBOutlet weak var lbReq1: UILabel!
    @IBOutlet weak var lbReq2: UILabel!
    @IBOutlet weak var lbReq3: UILabel!
    @IBOutlet weak var lbMensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        confTF()
        confTG()
        
        print(NomApe)
        print(Dni)
        print(Email)
        print(Cel)
        print(Fij)
        print(FecNac)
        
        lbReq1.textColor = UIColor.gray
        lbReq2.textColor = UIColor.gray
        lbReq3.textColor = UIColor.gray
    }
    
    func validarContrasena(){
        
        Cont = tfContrasena.text!
        Conf = tfConfirmar.text!
        
        if Cont != Conf {
            lbMensaje.text!="Las contraseñas ingresadas son diferentes"
            lbMensaje.textColor = UIColor(red: 0.75, green: 0, blue: 0, alpha: 1)
            lbReq1.textColor = UIColor(red: 0.75, green: 0, blue: 0, alpha: 1)
            lbReq2.textColor = UIColor(red: 0.75, green: 0, blue: 0, alpha: 1)
            lbReq3.textColor = UIColor(red: 0.75, green: 0, blue: 0, alpha: 1)
        }
        
        if Cont == Conf {
            lbMensaje.text!="Las contraseñas coinciden"
            lbMensaje.textColor = UIColor(red: 0, green: 0.65, blue: 0, alpha: 1)
            lbReq1.textColor = UIColor(red: 0, green: 0.65, blue: 0, alpha: 1)
            lbReq2.textColor = UIColor(red: 0, green: 0.65, blue: 0, alpha: 1)
            lbReq3.textColor = UIColor(red: 0, green: 0.65, blue: 0, alpha: 1)
        }
    }
    
    
    
    @IBAction func Cont_editingDidEnd(_ sender: Any) {
        validarContrasena()
    }
    @IBAction func Conf_editingDidEnd(_ sender: Any) {
        validarContrasena()
    }
    
    @IBAction func Registrar_click(_ sender: Any) {
        Dir = tfDireccion.text!
        Dis = tfDistrito.text!
        Cont = tfContrasena.text!
        Conf=tfConfirmar.text!
        if Dir==""||Dis==""||Cont==""||Conf==""{
            crearAlerta(titulo: "Registro de Usuario", mensaje: "Todos los campos son obligatorios")
        }else{
            print(Dir)
            print(Dis)
            print(Cont)
            print(Conf)
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
    
    //ocultar teclado
    private func confTF(){
        tfDireccion.delegate = self
        tfDistrito.delegate = self
        tfContrasena.delegate = self
        tfConfirmar.delegate = self
    }
    private func confTG(){
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(VCRegistraUsuario2.handleTap))
        view.addGestureRecognizer(tapGesture)
        
    }
    @objc func handleTap(){
        view.endEditing(true)
    }
    
}

extension VCRegistraUsuario2 : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
