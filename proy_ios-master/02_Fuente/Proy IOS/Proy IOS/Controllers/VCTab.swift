//
//  VCTab.swift
//  Proy IOS
//
//  Created by P on 10/7/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCTab: UIViewController {
    
    @IBOutlet weak var btAsesoria: UIButton!
    @IBOutlet weak var btCursos: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        let vCursos = self.storyboard?.instantiateViewController(withIdentifier: "UICursos") as! VCCursos
//        
//        if vCursos.tab == true {
//            btAsesoria.backgroundColor = UIColor(red: 0, green: 0.5, blue: 1, alpha: 0.5)
//            btCursos.backgroundColor = UIColor(red: 0, green: 0.5, blue: 1, alpha: 1)
//        } else {
//            btAsesoria.backgroundColor = UIColor(red: 0, green: 0.5, blue: 1, alpha: 1)
//            btCursos.backgroundColor = UIColor(red: 0, green: 0.5, blue: 1, alpha: 0.5)
//        }
//    }
}
