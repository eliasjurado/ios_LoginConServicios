//
//  Profesional.swift
//  Proy IOS
//
//  Created by P on 10/9/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class Profesional: NSObject {
    //Metadatos
    var ID : Int = 0
    var FecReg : String = ""
    //Registro Inicial
    var NombresYApellidos : String = ""
    var Dni : String = ""
    var Correo : String = ""
    var Celular : String = ""
    var Fijo : String = ""
    var FecNac : String = ""
    var Contrasena : String = ""
    var Direccion : String = ""
    var Distrito : String = ""
    //Perfil
    var Perfil : String = "" //maximo 140 caracteres
    var FotoUrl : String = ""
    

    init(_ID : Int, _FecReg : String, _NombresYApellidos : String, _Dni : String, _Correo : String, _Celular : String, _Fijo : String,_FecNac : String,_Contrasena : String,_Direccion : String,_Distrito : String,_Perfil : String,_FotoUrl : String ) {
        
        self.ID = _ID
        self.FecReg = _FecReg
        self.NombresYApellidos = _NombresYApellidos
        self.Dni = _Dni
        self.Correo = _Correo
        self.Celular = _Celular
        self.Fijo = _Fijo
        self.FecNac = _FecNac
        self.Contrasena = _Contrasena
        self.Direccion = _Direccion
        self.Distrito = _Distrito
        self.Perfil = _Perfil
        self.FotoUrl = _FotoUrl
    }
}
