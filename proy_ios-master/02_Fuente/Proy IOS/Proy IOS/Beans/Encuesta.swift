//
//  Encuesta.swift
//  Proy IOS
//
//  Created by P on 9/26/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class Encuesta: NSObject {
    
    var Titulo : String = ""
    var Target : String = ""
    var Autor : String = ""
    var Pregunta1 : String = ""
    var Pregunta2 : String = ""
    var Pregunta3 : String = ""
    var Pregunta4 : String = ""
    var Pregunta5 : String = ""
    
    init(pTitulo : String, pTarget : String, pAutor : String, pPregunta1 : String, pPregunta2 : String,pPregunta3 : String,pPregunta4 : String,pPregunta5 : String ) {
        
        self.Titulo = pTitulo
        self.Target = pTarget
        self.Autor = pAutor
        self.Pregunta1 = pPregunta1
        self.Pregunta2 = pPregunta2
        self.Pregunta3 = pPregunta3
        self.Pregunta4 = pPregunta4
        self.Pregunta5 = pPregunta5
    }
}
