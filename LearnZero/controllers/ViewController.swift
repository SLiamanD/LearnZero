//
//  ViewController.swift
//  LearnZero
//
//  Created by sliamand on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var viewRed: UIView =  {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    var viewBlue: UIView =  {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        createViewRedConstant()
        createViewBlueConstant()
    }
    
    func createViewRedConstant(){
        viewRed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewRed.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    func createViewBlueConstant(){
        viewBlue.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewBlue.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewBlue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

