//
//  GreenViewController.swift
//  learnZero
//
//  Created by Алексей Грачев on 03.05.2022.
//

import UIKit

class GreenViewController: UIViewController {
    var textFromVC:String!
    @IBAction func goToRoot(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = textFromVC
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        title = textFromVC

        
        
        // Navigation Bar:
        navigationController?.navigationBar.barTintColor = UIColor.gray

        // back button chose color
        
        
        self.navigationController?.navigationBar.tintColor = UIColor.black

    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
