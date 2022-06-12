//
//  ViewController.swift
//  learnZero
//
//  Created by Алексей Грачев on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var avatarOutlet: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        avatarOutlet.layer.cornerRadius = avatarOutlet.frame.size.width / 7
        avatarOutlet.clipsToBounds = true
        avatarOutlet.layer.borderWidth = 2.0
        avatarOutlet.layer.borderColor = UIColor.lightGray.cgColor

    }
    override func viewWillAppear(_ animated: Bool) {
//        title = textFromVC

        
        
        // Navigation Bar:
        navigationController?.navigationBar.barTintColor = UIColor.gray

        // back button chose color
        
        
        self.navigationController?.navigationBar.tintColor = UIColor.black

    }

}
