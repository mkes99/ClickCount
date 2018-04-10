//
//  ViewController.swift
//  ClickCounter
//
//  Created by Formative Mini on 4/9/18.
//  Copyright © 2018 Formative Web Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60 )
        label.text = "0"
        view.addSubview(label)
        self.label = label
     
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 250, width: 200, height: 60)
        button.setTitle("Click to increase count", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitleColor(UIColor.red, for: .highlighted)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        //decButton
        let decButton = UIButton()
        decButton.frame = CGRect(x: 100, y: 350, width: 200, height: 60)
        decButton.setTitle("Click to reduce count", for: .normal)
        decButton.setTitleColor(UIColor.red, for: .normal)
        decButton.setTitleColor(UIColor.blue, for: .highlighted)
        view.addSubview(decButton)
        
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
    }
    
    
    @objc func incrementCount() {
        self.count += 1
        self.label?.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label?.text = "\(self.count)"
    }
}

