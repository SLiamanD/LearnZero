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
        

        
        
        

        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Variable to store alertTextField
        var firstTextField = UITextField()
        var secondTextField = UITextField()
        let alert = UIAlertController(title: "WELCOME!", message: "", preferredStyle: .alert)
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "enter your name"
            
            //Copy alertTextField in local variable to use in current block of code
            firstTextField = alertTextField
            
            
            
        }
        
        var tappedOnTextField = false
        let action = UIAlertAction(title: "say hello", style: .default) { action in
            tappedOnTextField = true
            self.hiLabel.text! = "Welcome," + " " + firstTextField.text! + "!"
            if tappedOnTextField == true {
                self.hiLabel.isHidden = false
                self.startGameOutlet.isHidden = false
            }
        }
        
        
        
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)


        
        
        
        
    }
 
}


