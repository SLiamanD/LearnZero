//
//  ViewController.swift
//  learnZero
//
//  Created by Алексей Грачев on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var tapOutlet: UIButton!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tapOutlet.backgroundColor = .green
        tapOutlet.frame.size.width = 50
        tapOutlet.frame.size.height = 50
        tapOutlet.layer.cornerRadius = tapOutlet.frame.size.height / 3
        
        hiLabel.isHidden = true
        
        

        
        
    }
    override func viewWillAppear(_ animated: Bool) {
    }
    @IBAction func tapAction(_ sender: UIButton) {
        //Variable to store alertTextField
        var textField = UITextField()
        
        let alert = UIAlertController(title: "WELCOME!", message: "", preferredStyle: .alert)
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "enter your name please"
            
            //Copy alertTextField in local variable to use in current block of code
            textField = alertTextField
        }
        
        let action = UIAlertAction(title: "say hi", style: .default) { action in
            //Prints the alertTextField's value
            print(textField.text!)
            self.hiLabel.text! += " " + textField.text! + "!"
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        hiLabel.isHidden = false
    }
}
