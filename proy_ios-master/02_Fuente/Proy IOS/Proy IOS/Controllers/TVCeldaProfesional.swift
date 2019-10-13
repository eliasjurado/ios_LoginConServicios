//
//  TableViewCellCeldaEncuesta.swift
//  Proy IOS
//
//  Created by P on 9/27/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class TVCeldaProfesional: UITableViewCell {
    @IBOutlet weak var lbNombresYApellidos: UILabel!
    @IBOutlet weak var tvPerfil: UITextView!
    @IBOutlet weak var ivFoto: UIImageView!
    @IBOutlet weak var btLike: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //tvPerfil.textAlignment = NSTextAlignment.justified
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    public func setProfesional(_Profesional : Profesional){
        lbNombresYApellidos.text = _Profesional.NombresYApellidos
        tvPerfil.text = _Profesional.Perfil
        ivFoto.downloaded(from: _Profesional.FotoUrl)
    }
    @IBAction func btLike_Click(_ sender: Any) {
        if btLike.currentImage == UIImage(named: "corazonvacio.png"){
            btLike.setImage(UIImage(named: "corazonlleno.png"), for: .normal)
        }else{
            btLike.setImage(UIImage(named: "corazonvacio.png"), for: .normal)
        }
    }
    
}
//Para descargar la imagen de una URL
extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
            }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
