//
//  ViewController.swift
//  Login de Usuario con Servicios
//
//  Created by DAMII on 10/13/19.
//  Copyright © 2019 Elías Jurado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfUsuario: UITextField!
    @IBOutlet weak var tfClave: UITextField!
    @IBOutlet weak var lbMensaje: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btLogin_Click(_ sender: Any) {
        var urlLogin = "http://wscibertec201922.somee.com/Usuario/ValidarUsuario?pLogin=" + self.tfUsuario.text! + "&pContrasenia=" + self.tfClave.text!
        print(urlLogin)
        let urlLogueo = URL(string : urlLogin)
        let peticion = URLRequest(url : urlLogueo!)
        
        let tarea = URLSession.shared.dataTask(with: peticion)
        {
            Datos, Respuesta, Error in
            print("por iniciar")
            if Error == nil
            {
                print("Por procesar datos")
                print(Datos ?? "Vacio")
                let datosCadena = NSString(data: Datos!, encoding: String.Encoding.utf8.rawValue)
                print(datosCadena!)
                print("Fin procesar datos")
                //**************************
                print("Leer Datos JSON")
                DispatchQueue.main.async {
                    //Inicio Completar la lectura de objetos JSON
                    let JSON = try? JSONSerialization.jsonObject(with: Datos!, options: [])
                    if let dictionary = JSON as? [String : Any], let objUsuario = {
                        let CodigoUsuario = dictionary["CodigoUsuario"] as! Int!
                        let Nombres = objUsuario["Nombres"] as! String
                        if CodigoUsuario ["ObjUsuario"] > 0
                        {
                            //self.NombresUsuario = Nombres
                            
                            self.lbMensaje.text = "Bienvenido: \(Nombres)"
                            //self.performSegue(withIdentifier: "ListadoUsuario", sender: self)
                        }
                        else
                        {
                            self.lbMensaje.text = "Usuario o Clave Incorrecto"
                        }
                    }
                    //Fin de completar la lectura de objetos JSON
                }
            }
            else{
                print("Error")
                print(Error ?? "Error vacío")
                let strCadena = Error as! String
            }

        }
        tarea.resume()
        
    }
    

}

