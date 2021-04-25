//
//  CityCell.swift
//  UIComponents
//
//  Created by Kerim Caglar on 25.04.2021.
//

import UIKit

class CityCell: UITableViewCell {
    @IBOutlet weak var cityImg: UIImageView!
    @IBOutlet weak var cityNameLbl: UILabel!
    @IBOutlet weak var cityFamousLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(city:CityModel) {
        cityImg.image = UIImage(named: city.cityImg)
        cityNameLbl.text = city.name
        cityFamousLbl.text = city.famous
    }
}
