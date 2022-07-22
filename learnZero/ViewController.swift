//
//  ViewController.swift
//  learnZero
//
//  Created by Алексей Грачев on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var startGameOutlet: UIButton!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiLabel.isHidden = true
        startGameOutlet.isHidden = true
        startGameOutlet.setTitle("продолжить", for: .normal)
        startGameOutlet.frame.size.width = 280
        startGameOutlet.frame.size.height = 75
        startGameOutlet.layer.cornerRadius = 12
        startGameOutlet.layer.masksToBounds = true
        startGameOutlet.backgroundColor = .cyan
        startGameOutlet.center = view.center
    }
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Variable to store alertTextField
        var firstTextField = UITextField()
        var secondTextField = UITextField()
        let alert = UIAlertController(title: "Добро пожаловать!", message: "давайте знакомиться", preferredStyle: .alert)
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "введите пожалуйста ваше имя"
            
            //Copy alertTextField in local variable to use in current block of code
            firstTextField = alertTextField
        }
        
        var tappedOnTextFieldAction = false
        let action = UIAlertAction(title: "познакомиться", style: .default) { action in
            tappedOnTextFieldAction = true
            self.hiLabel.text! = "Привет " + firstTextField.text! + "!"
            if tappedOnTextFieldAction == true {
                self.hiLabel.isHidden = false
                self.startGameOutlet.isHidden = false
            }
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
}


