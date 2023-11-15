//
//  ViewController.swift
//  imageViewJustaSid
//
//  Created by Антон Баландин on 15.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImageView()
        
        imageView.animationDuration = 12
        imageView.animationImages = [
            UIImage(named: "1")!,
            UIImage(named: "2")!,
            UIImage(named: "3")!,
            UIImage(named: "4")!,
            UIImage(named: "5")!,
            UIImage(named: "6")!,
            UIImage(named: "7")!,
            UIImage(named: "8")!
        ]
        
        imageView.transform = imageView.transform.rotated(by: .pi / 2)
        
        
        
        imageView.startAnimating()
        animation ()
        
        
        
        //imageView.image = image
        
    }
    
    
    func setupImageView() {
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func animation () {
        UIView.animate(withDuration: 2, delay: 2, options: [.repeat, .autoreverse, .curveEaseIn], animations: {
            self.imageView.alpha = 0
        })
    }
}

