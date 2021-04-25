//
//  ViewController.swift
//  UIComponents
//
//  Created by Kerim Caglar on 25.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLbl: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var segmentLbl: UILabel!
    
    @IBOutlet weak var sliderLbl: UILabel!
    
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var switchLbl: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLbl: UILabel!
    
    @IBOutlet weak var logoImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*let frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 200)
        let label = UILabel(frame: frame)
        label.backgroundColor = .red
        label.textColor = .white
        label.numberOfLines = 0
        //label.font = UIFont(name: "Avenir", size: 15)
        label.font = .boldSystemFont(ofSize: 15)
        label.textAlignment = .center
        label.text = "Merhaba iOS, Merhaba iOS, Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS,Merhaba iOS"
        view.addSubview(label)*/
        
    /*
        Buton ile ilgili özelleştirmeler
         */
        //saveButton.isHidden = true
        //saveButton.isEnabled = false
        //saveButton.setTitle("Yeni Title", for: .normal)
        //saveButton.setTitleColor(.red, for: .highlighted)
        
        //DatePicker
        //let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 500, width: 300, height: 200))
        //datePicker.datePickerMode = .time
        //datePicker.datePickerMode = .countDownTimer
        //datePicker.minuteInterval = 15
        //datePicker.countDownDuration = 60 * 60
        //view.addSubview(datePicker)
        
        switchBtn.addTarget(self, action: #selector(switchChangeValue), for: .valueChanged)
        
        logoImg.image = UIImage(named: "3")
        
        logoImg.layer.cornerRadius = logoImg.frame.width / 2
    }

    @IBAction func changeWelcomeMsg(_ sender: Any) {
        let name = nameTextField.text
        welcomeLbl.text = "Merhaba \(name ?? "")"
        print("İsim değiştirildi")
    }
    
    @IBAction func tappedSegmented(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            segmentLbl.text = "İlk segment seçildi"
        case 1:
            segmentLbl.text = "İkinci segment seçildi"
        default:
            break
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        let value = Int(sender.value)
        
        sliderLbl.text = "\(value)"
    }
    
    @objc func switchChangeValue(switchState: UISwitch) {
        if switchState.isOn {
            switchLbl.text = "Açık"
        } else {
            switchLbl.text = "Kapalı"
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperLbl.text = Int(sender.value).description
    }
    
    
}

