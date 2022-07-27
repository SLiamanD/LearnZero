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
        view.backgroundColor = UIColor.red
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        
        let viewVFL = ["viewRed":viewRed,"viewBlue":viewBlue]
        let metrics = ["height":100, "width": view.bounds.size.width / 3, "top": view.bounds.size.height / 2 ]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewRed(height)]|",
                                                          options: [],
                                                          metrics: metrics,
                                                          views: viewVFL))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewBlue(height)]|",
                                                          options: [],
                                                          metrics: metrics,
                                                          views: viewVFL))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[viewRed(width)]-(50)-[viewBlue(width)]-|",
                                                          options: [],
                                                          metrics: metrics,
                                                          views: viewVFL))
    }
}
