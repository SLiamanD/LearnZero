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
        view.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        view.backgroundColor = UIColor.red
        return view
        
    }()
 
 
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        createView1Constant()
    }
    
    func createView1Constant() {
        NSLayoutConstraint(item: view1,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerY,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 200).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 200).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .width,
//                           multiplier: 1,
//                           constant: 0).isActive = true
        
    }
    
    
    

}
