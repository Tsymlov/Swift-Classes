//
//  ViewController.swift
//  Sandbox
//
//  Created by Alexey Tsymlov on 9/9/15.
//  Copyright (c) 2015 Alexey Tsymlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func action() {
        println("Button tapped!")
        label.text = "Button tapped!"
    }
}

