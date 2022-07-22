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
        sumOutlet.frame.size.width = 300
        sumOutlet.frame.size.height = 400
        sumOutlet.numberOfLines = 5
        sumOutlet.center = view.center
        sumOutlet.isHidden = true
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

        var tappedOnTextField = false
        let action = UIAlertAction(title: "посчитать", style: .default) {
            action in
            tappedOnTextField = true
            if tappedOnTextField == true {
                self.sumOutlet.isHidden = false
                var nonOptSecondTextField = Int(secondTextField.text!) ?? 0
                var nonOptFirstTextField = Int(firstTextField.text!) ?? 0
                var sum = nonOptSecondTextField + nonOptFirstTextField
                if sum != 0 {
                    self.sumOutlet?.text! = String(sum)
                } else { self.sumOutlet?.text! = "перезапустите пожалуйста экран свайпом сверху вниз "
                }
            }
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}









