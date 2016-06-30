//
//  ViewController.swift
//  Click Counter
//
//  Created by Jaemoon Park on 6/29/16.
//  Copyright © 2016 Jaemoon Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count =  0
    var count2 = 0
    var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.label = label
        self.view.addSubview(label)
        
        var label2 = UILabel()
        label2.frame = CGRectMake(200, 150, 60, 60)
        label2.text = "0"
        self.label2 = label2
        self.view.addSubview(label2)
        // Do any additional setup after loading the view, typically from a nib.
        
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("+", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        var button2 = UIButton()
        button2.frame = CGRectMake(200, 250, 60, 60)
        button2.setTitle("-", forState: .Normal)
        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button2)
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        var button3 = UIButton()
        button3.frame = CGRectMake(250, 250, 60, 60)
        button3.setTitle("change", forState: .Normal)
        button3.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button3)
        button3.addTarget(self, action: "changeColor", forControlEvents: UIControlEvents.TouchUpInside)

    }
    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(count)"
    }
    
    func decrementCount(){
        self.count2 -= 1
        self.label2.text = "\(count2)"
    }
    
    func changeColor(){
        self.view.backgroundColor = UIColor.yellowColor()
    }


}

