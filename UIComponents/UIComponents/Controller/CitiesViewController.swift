//
//  CitiesViewController.swift
//  UIComponents
//
//  Created by Kerim Caglar on 25.04.2021.
//

import UIKit

class CitiesViewController: UIViewController {
    
    
    /*var cities = ["Adana","Adıyaman","Antalya","İstanbul","Balıkesir","İzmir","Çanakkale","Eskişehir","Bursa","Muş","Ankara","Aydın","Van","Muğla","Hakkari","Antep","Şırnak", "Kocaeli"]*/
    var cities = [CityModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cities.append(CityModel(cityImg: "balikesir", name: "Balıkesir", famous: "Kolonya"))
        cities.append(CityModel(cityImg: "boyoz", name: "İzmir", famous: "Boyoz"))
        cities.append(CityModel(cityImg: "manti", name: "Kayseri", famous: "Mantı"))
    }

}

extension CitiesViewController: UITableViewDataSource, UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell") as! CityCell
        /*cell.textLabel?.text = cities[indexPath.row].name
        cell.detailTextLabel!.text = cities[indexPath.row].famous
        cell.cityImg.image = UIImage(named: cities[indexPath.row].cityImg)
        cell.cityNameLbl.text = cities[indexPath.row].name
        cell.cityFamousLbl.text = cities[indexPath.row].famous*/
        cell.configure(city: cities[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row + 1) nolu satıra tıklandı")
        print("\(cities[indexPath.row]) seçildi")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
