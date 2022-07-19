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
//        tapOutlet.layer.cornerRadius = 16
//        tapOutlet.layer.masksToBounds = false
        tapOutlet.layer.cornerRadius = tapOutlet.frame.size.height / 3
    }
    override func viewWillAppear(_ animated: Bool) {
    }
    @IBAction func tapAction(_ sender: UIButton) {
    }
}
