//
//  ViewController.swift
//  TMSHw9
//
//  Created by azinavi on 26/12/23.
//

import UIKit

class ViewController: UIViewController {
    var nextViewButton = UIButton()
    var openCarButton = UIButton()
    var dataToSend = "Data from main VIEW"


    override func viewDidLoad() {
        super.viewDidLoad()
        nextViewButtonSetup()
        openCarButtonSetup()
    }
    
    func nextViewButtonSetup() {
        nextViewButton.setTitle("Forward", for: .normal)
        nextViewButton.setTitleColor(UIColor.systemBlue, for: .normal)
        nextViewButton.frame = CGRect(x: view.center.x - 50, y: view.center.y - 15, width: 100, height: 30)
        nextViewButton.addTarget(self, action: #selector(tapNextViewButton), for: .touchUpInside)
        view.addSubview(nextViewButton)
        view.backgroundColor = UIColor.black
    }
    
    @objc func tapNextViewButton() {
        let secondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .fullScreen
        secondViewController.dataFromMain = dataToSend
        self.present(secondViewController, animated: true)
    }
    
    func openCarButtonSetup() {
        openCarButton.setTitle("Open Cars", for: .normal)
        openCarButton.setTitleColor(UIColor.systemBlue, for: .normal)
        openCarButton.frame = CGRect(x: view.center.x - 50, y: view.center.y + 30, width: 100, height: 30)
        openCarButton.addTarget(self, action: #selector(tapCarViewButton), for: .touchUpInside)
        view.addSubview(openCarButton)
    }
    @objc func tapCarViewButton() {
        let carViewController = Car()
        carViewController.modalPresentationStyle = .fullScreen
        self.present(carViewController, animated: true)
    }
}


class SecondViewController: UIViewController {
    var dataFromMain: String?
    var nextViewButton = UIButton()
    var previousViewButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let receivedData = dataFromMain {
//            print("received data: \(receivedData)")
//        }
        
        nextViewButtonSetup()
        previousViewButtonSetup()
        
    }
    
    func nextViewButtonSetup() {
        nextViewButton.setTitle("Forward", for: .normal)
        nextViewButton.setTitleColor(UIColor.systemBlue, for: .normal)
        nextViewButton.frame = CGRect(x: view.center.x - 50, y: view.center.y - 15, width: 100, height: 30)
        nextViewButton.addTarget(self, action: #selector(tapNextViewButton), for: .touchUpInside)
        view.addSubview(nextViewButton)
        view.backgroundColor = UIColor.black
    }
    @objc func tapNextViewButton() {
        let thirdViewController = ThirdViewController()
        thirdViewController.modalPresentationStyle = .fullScreen
        thirdViewController.dataFromSecondView = dataFromMain
        self.present(thirdViewController, animated: true)
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


class ThirdViewController: UIViewController {
    var dataFromSecondView: String?
    var nextViewButton = UIButton()
    var previousViewButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        nextViewButtonSetup()
        previousViewButtonSetup()
        
    }
    
    func nextViewButtonSetup() {
        nextViewButton.setTitle("Forward", for: .normal)
        nextViewButton.setTitleColor(UIColor.systemBlue, for: .normal)
        nextViewButton.frame = CGRect(x: view.center.x - 50, y: view.center.y - 15, width: 100, height: 30)
        nextViewButton.addTarget(self, action: #selector(tapNextViewButton), for: .touchUpInside)
        view.addSubview(nextViewButton)
        view.backgroundColor = UIColor.black
    }
    @objc func tapNextViewButton() {
        let fourthViewController = FourthViewController()
        fourthViewController.modalPresentationStyle = .fullScreen
        fourthViewController.dataFromThirdView = dataFromSecondView
        self.present(fourthViewController, animated: true)
    }
    
    func previousViewButtonSetup() {
        previousViewButton.setTitle("ᐸ Back", for: .normal)
        previousViewButton.setTitleColor(UIColor.systemBlue, for: .normal)
        previousViewButton.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        previousViewButton.addTarget(self, action: #selector(tapPreviousViewButton), for: .touchUpInside)
        view.addSubview(previousViewButton)
    }
    @objc func tapPreviousViewButton() {
        let secondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .fullScreen
        self.present(secondViewController, animated: true)
    }
}


class FourthViewController: UIViewController {
    var dataFromThirdView: String?
    var nextViewButton = UIButton()
    var previousViewButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        nextViewButtonSetup()
        previousViewButtonSetup()
        
    }
    
    func nextViewButtonSetup() {
        nextViewButton.setTitle("Forward", for: .normal)
        nextViewButton.setTitleColor(UIColor.systemBlue, for: .normal)
        nextViewButton.frame = CGRect(x: view.center.x - 50, y: view.center.y - 15, width: 100, height: 30)
        nextViewButton.addTarget(self, action: #selector(tapNextViewButton), for: .touchUpInside)
        view.addSubview(nextViewButton)
        view.backgroundColor = UIColor.black
    }
    @objc func tapNextViewButton() {
        let fifthViewController = FifthViewController()
        fifthViewController.modalPresentationStyle = .fullScreen
        fifthViewController.dataFromForthView = dataFromThirdView
        self.present(fifthViewController, animated: true)
    }
    
    func previousViewButtonSetup() {
        previousViewButton.setTitle("ᐸ Back", for: .normal)
        previousViewButton.setTitleColor(UIColor.systemBlue, for: .normal)
        previousViewButton.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        previousViewButton.addTarget(self, action: #selector(tapPreviousViewButton), for: .touchUpInside)
        view.addSubview(previousViewButton)
    }
    @objc func tapPreviousViewButton() {
        let thirdViewController = ThirdViewController()
        thirdViewController.modalPresentationStyle = .fullScreen
        self.present(thirdViewController, animated: true)
    }
}


class FifthViewController: UIViewController {
    var dataFromForthView: String?
    var previousViewButton = UIButton()
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        previousViewButtonSetup()
        labelSetup()
        
    }
    
    func labelSetup() {
        label.text = dataFromForthView
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
        view.backgroundColor = UIColor.black
    }
    @objc func tapPreviousViewButton() {
        let fourthViewController = FourthViewController()
        fourthViewController.modalPresentationStyle = .fullScreen
        self.present(fourthViewController, animated: true)
    }
}
