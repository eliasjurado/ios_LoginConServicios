//
//  ViewControllerListaEncuesta.swift
//  Proy IOS
//
//  Created by P on 9/26/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCProfesionales: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaProfesional.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ocelda = tableView.dequeueReusableCell(withIdentifier: "celdaprofesional",for: indexPath) as! TVCeldaProfesional
        
        let oProfesional = listaProfesional[indexPath.row]
        
        ocelda.setProfesional(_Profesional: oProfesional)
        //ocelda.textLabel?.text = listaEncuesta [indexPath.row].Titulo
        return ocelda
    }

    @IBOutlet weak var tbLista: UITableView!
    var listaProfesional : [Profesional] = []
    
//    func StringToDate(fec : String) -> Date {
//        let df = DateFormatter()
//        df.dateFormat = "yyyy-MM-dd"
//        let fecha = df.date(from: fec)
//        return fecha ?? Date()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tbLista.rowHeight = 153
        
        let oProfesional1=Profesional(_ID: 1, _FecReg: "2019-09-08", _NombresYApellidos: "Lynda Génesis Ramos Sáenz", _Dni: "45679878", _Correo: "lyndar@gmail.com", _Celular: "933630460", _Fijo: "4562598", _FecNac:"1990-01-18", _Contrasena: "lynda", _Direccion: "Av. Los Héroes 265", _Distrito: "Puente Piedra", _Perfil: "Estudiante de último ciclo de computación e informática en Cibertec. Disfruto enseñar especialmente a niños.", _FotoUrl: "https://scontent.flim17-1.fna.fbcdn.net/v/t1.0-1/p160x160/68610891_2130066373771693_4409784218637303808_n.jpg?_nc_cat=109&_nc_oc=AQlLYWOHK23UPK_unirizv1jsjqiAEEIUh5VUxQNyoiSy8xeeQW37BK-kpe663yiGwo&_nc_ht=scontent.flim17-1.fna&oh=fe8982fc7186148bd5721209070a5cde&oe=5E352E06")
        listaProfesional.append(oProfesional1)
        
        let oProfesional2=Profesional(_ID: 2, _FecReg: "2019-09-09", _NombresYApellidos: "Elías Luis Jurado Santos", _Dni: "43464542", _Correo: "eliasljurado@gmail.com", _Celular: "940285514", _Fijo: "4830223", _FecNac: "1986-01-17", _Contrasena: "elias", _Direccion: "Jr. Pedro Remy 190, Urb. Ingeniería", _Distrito: "San Martín De Porres", _Perfil: "Historiador de San Marcos, con más de 10 años de experiencia enseñando a adolescentes y a alumnos de primeros ciclos de universidad.", _FotoUrl: "https://scontent.flim17-1.fna.fbcdn.net/v/t1.0-9/1599_53947119064_7650_n.jpg?_nc_cat=102&_nc_oc=AQlQAPVb36oOMpCskZSai3t5pYp57v6x2rRlX42V8NCll5hSE5GhcmZsipXRfwJnNds&_nc_ht=scontent.flim17-1.fna&oh=97b53f0d2117e04009b3bf933ade783b&oe=5E324D61")
        listaProfesional.append(oProfesional2)
        
        let oProfesional3=Profesional(_ID: 3, _FecReg: "2019-09-01", _NombresYApellidos: "Jean Paul Aguirre Choque", _Dni: "56895623", _Correo: "jeanpaulac@gmail.com", _Celular: "980788254", _Fijo: "", _FecNac: "1989-07-28", _Contrasena: "jeanpaul", _Direccion: "Jr. Martín Aguirre 340", _Distrito: "Los Olivos", _Perfil: "Profesor de física en la academia César Vallejo, preparación de alumnos para la UNI.", _FotoUrl: "https://scontent.flim17-1.fna.fbcdn.net/v/t1.0-1/p160x160/65763249_10162042163195048_5886716355247341568_n.jpg?_nc_cat=109&_nc_oc=AQnROQK9uVT2G7yDDcT0Usldc2QPMSIBZ_FB_0n12m_iAwuoS2AU0QxpBz2dxQZqP6Y&_nc_ht=scontent.flim17-1.fna&oh=c469f7928894bcfbb3928ff38faebc0a&oe=5E272FBA")
        listaProfesional.append(oProfesional3)
        
        let oProfesional4=Profesional(_ID: 3, _FecReg: "2019-08-15", _NombresYApellidos: "Percy Rojas Villadeza", _Dni: "36968574", _Correo: "percy.rojas@gmail.com", _Celular: "945785659", _Fijo: "4810817", _FecNac: "1983-06-18", _Contrasena: "percy", _Direccion: "Pasaje Huáscar 122", _Distrito: "Comas", _Perfil: "Concertista de charango, educador Musical en Orquestando, docente de Arte en el Colegio Nacional Mixto San Felipe de Comas.", _FotoUrl: "https://scontent.flim17-1.fna.fbcdn.net/v/t1.0-1/c0.0.160.160a/p160x160/71059047_2841074585922203_8514643454523867136_n.jpg?_nc_cat=106&_nc_oc=AQmCfcbJd30g6pVsosW9DlKq9n7VTB90LFfZcsb_j_oVEHXiWtNXW20FMqBbtaGlf-w&_nc_ht=scontent.flim17-1.fna&oh=d85ae1b8b447b2768dc73b9e6bf97ae1&oe=5E2DC04D")
        listaProfesional.append(oProfesional4)
        
        let oProfesional5=Profesional(_ID: 3, _FecReg: "2019-09-02", _NombresYApellidos: "Cristian Ríos Huayama", _Dni: "46589878", _Correo: "cristianrh@gmail.com", _Celular: "958621473", _Fijo: "536025", _FecNac: "1986-10-10", _Contrasena: "cristian", _Direccion: "Ca. Los Nogales 457", _Distrito: "Castilla", _Perfil: "Más de 30 años en el ejercicio profesional como docente universitario, consultor de Comunicación Corporativa y Relaciones Públicas, conferencista en tema de su especiliadad a nivel nacional e internacional.", _FotoUrl: "https://scontent.flim17-1.fna.fbcdn.net/v/t1.0-1/c0.0.160.160a/p160x160/27867951_10154913202011525_4367336273433320811_n.jpg?_nc_cat=102&_nc_oc=AQmkk6I4Lv55VxXos1VyT0lDSDOXZ3Jx6QNA0nWSesP_zKRn_EGtaYt5UNqjHf26Im4&_nc_ht=scontent.flim17-1.fna&oh=150bf5ef2d5696f48fc3d654ad1e0288&oe=5E2ADAFB")
        listaProfesional.append(oProfesional5)
        
        let oProfesional6=Profesional(_ID: 3, _FecReg: "2019-08-15", _NombresYApellidos: "Maria Dora Cueva Maza", _Dni: "89562345", _Correo: "mariacueva23@hotmail.com", _Celular: "956231457", _Fijo: "3825689", _FecNac: "1988-06-11", _Contrasena: "maria", _Direccion: "Jr. Las Lagunas 699", _Distrito: "La Molina", _Perfil: "Docente capacitador en herramientas TI, para diferentes especialidades en el área superior: Computación e Informática, Gestión de Negocios, Dirección de Proyectos, Marketing, Diseño Gráfico.", _FotoUrl: "https://media.licdn.com/dms/image/C5603AQGsu2K6aPGFMw/profile-displayphoto-shrink_200_200/0?e=1576108800&v=beta&t=vxqEU6pb93BY99LvMR4CpR47pEEcvwZHi5fN71hnnm4")
        listaProfesional.append(oProfesional6)
        
        self.tbLista.dataSource = self
        self.tbLista.delegate = self
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "pasarLista"{
//            let lista = segue.destination as! VCRegistraEncuesta
//            lista.listaParaLlenar = listaEncuesta
//        }
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            self.listaProfesional.remove(at: indexPath.row)
            self.tbLista.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
