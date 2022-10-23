//
//  ViewController.swift
//  Coordinator
//
//  Created by Uladzislau Komar on 22.10.22.
//

import UIKit

class ConfirmPhoneViewController: UIViewController {

    var dataPerson: PersonData!
    
    lazy var textField: UITextField = {
        let view = UITextField()
        view.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 300, height: 50))
        view.center = self.view.center
        view.placeholder = "Enter text"

        view.borderStyle = .roundedRect
        
        return view
    }()
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 150, height: 50))
        button.center.x = self.view.center.x
        button.center.y = self.view.center.y + 100
        button.setTitle("Next screen", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(nextScreen), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    
    func setup(setData: PersonData) {
        self.title = "Enter Phone Number"
        self.dataPerson = setData
        
        
        self.view.addSubview(textField)
        self.view.addSubview(nextButton)
    }

    @objc private func nextScreen(_ sender: UIButton) {
        let conf = textField.text ?? ""
        self.dataPerson.confirmationCode = conf
        let nextScreen = EnterPassViewController()
        nextScreen.setup(setData: dataPerson)
        self.navigationController?.pushViewController(nextScreen, animated: true)
    }
}

