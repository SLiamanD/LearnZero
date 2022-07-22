//
//  secondViewContrpoller.swift
//  learnZero
//
//  Created by Алексей Грачев on 21.07.2022.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var sumOutlet: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sumOutlet.isHidden = true
    }

    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidAppear(_ animated: Bool) {
        //Variable to store alertTextField
        var firstTextField = UITextField()
        var secondTextField = UITextField()
        let alert = UIAlertController(title: "введите пожалуйста числа", message: "операция сложения", preferredStyle: .alert)
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "введите первое число"
            //Copy alertTextField in local variable to use in current block of code
            firstTextField = alertTextField
        }
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "введите второе число"
            //Copy alertTextField in local variable to use in current block of code
            secondTextField = alertTextField
        }
        var nonOptSecondTextField = Int(secondTextField.text!) ?? 0
        var nonoptFirstTextField = Int(firstTextField.text!) ?? 0
        var sum = nonOptSecondTextField + nonoptFirstTextField
        var tappedOnTextField = false
        let action = UIAlertAction(title: "посчитать", style: .default) {
        action in
        tappedOnTextField = true
        if tappedOnTextField == true { self.sumOutlet.isHidden = false }
            if sum != 0 {self.sumOutlet?.text! = String(sum)
            } else {self.sumOutlet?.text! = "перезапустите пожадуйтса экран свайпом"
            }
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    
    }
}









