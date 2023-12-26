//
//  Car.swift
//  TMSHw9
//
//  Created by azinavi on 26/12/23.
//

import UIKit

class Car: UIViewController {
    var producer: String = "LEXUS"
    var model: String = "LX 570"
    var yearOfRelease: String = "2020"
    var engineVolume: String = "5.7l"
    
    var previousViewButton = UIButton()
    var label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        previousViewButtonSetup()
        infoCar()
        
    }
    
    func infoCar() {
        label.text = "Car: \(producer) \(model) \(yearOfRelease) \(engineVolume)"
        label.textColor = UIColor.white
        label.frame = CGRect(x: 40, y: 100, width: 400, height: 50)
        view.addSubview(label)
    }
    
    func previousViewButtonSetup() {
        previousViewButton.setTitle("ᐸ Back", for: .normal)
        previousViewButton.setTitleColor(UIColor.systemBlue, for: .normal)
        previousViewButton.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        previousViewButton.addTarget(self, action: #selector(tapPreviousViewButton), for: .touchUpInside)
        view.addSubview(previousViewButton)
    }
    @objc func tapPreviousViewButton() {
        let mainViewController = ViewController()
        mainViewController.modalPresentationStyle = .fullScreen
        self.present(mainViewController, animated: true)
    }
}
