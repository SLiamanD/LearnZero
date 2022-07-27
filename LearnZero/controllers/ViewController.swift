//
//  ViewController.swift
//  LearnZero
//
//  Created by sliamand on 27.07.2022.
//

import UIKit
 
class ViewController: UIViewController {
 
    var view1: UIView =  {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.backgroundColor = UIColor.red
        return view
        
    }()
 
 
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
