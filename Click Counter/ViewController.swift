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
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(count)"
    }



}

