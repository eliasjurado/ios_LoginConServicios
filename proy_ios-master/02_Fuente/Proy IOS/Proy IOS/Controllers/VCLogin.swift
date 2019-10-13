//
//  ViewController.swift
//  Proy IOS
//
//  Created by P on 9/23/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCLogin: UIViewController {

    @IBOutlet weak var tfemail: UITextField!
    @IBOutlet weak var tfpass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        confTF()
        confTG()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func btnIniciarSesion_Click(_ sender: Any) {
        view.endEditing(true)
        if tfemail.text == "" {
            crearAlerta(titulo: "tuprofe.pe", mensaje: "Ingrese email")
        }
        if tfpass.text == "" {
            crearAlerta(titulo: "tuprofe.pe", mensaje: "Ingrese contraseña")
        }
    }
    
    @IBAction func Enviar_click(_ sender: Any) {
        
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
        tfemail.delegate = self
        tfpass.delegate = self
    }
    private func confTG(){
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(VCLogin.handleTap))
        view.addGestureRecognizer(tapGesture)
        
    }
    @objc func handleTap(){
        view.endEditing(true)
    }
}

extension VCLogin : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
