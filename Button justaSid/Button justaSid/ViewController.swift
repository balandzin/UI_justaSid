//
//  ViewController.swift
//  Button justaSid
//
//  Created by Антон Баландин on 13.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var truthButton: UIButton!
    @IBOutlet var actionButton: UIButton!
    
    @IBOutlet var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func truthAction() {
        textLabel.text = Source.getInfo(type: .word)
    }
    
    @IBAction func actionAction() {
        textLabel.text = Source.getInfo(type: .action)
    }
}

