//
//  ViewController.swift
//  segmentedControl
//
//  Created by Антон Баландин on 11.09.23.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentedControl = UISegmentedControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titles = ["one", "two", "three"]
        segmentedControl = UISegmentedControl(items: titles)
        
        segmentedControl.insertSegment(withTitle: "four", at: 3, animated: true) // добавление сегмента по порядковому номеру
        
        segmentedControl.setTitle("oone", forSegmentAt: 0) // изменение имени сегмента
        
        segmentedControl.setImage(UIImage(systemName: "circle")!, forSegmentAt: 0) // установка картинки в сегмент
        
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.selectedSegmentTintColor = UIColor.green //изменение цвета бегунка
        
        //segmentedControl.setWidth(150, forSegmentAt: 2) // изменение размера конкретного сегмента
        
        segmentedControl.setTitle("so long title text", forSegmentAt: 2)
        segmentedControl.apportionsSegmentWidthsByContent = true // подстраивается размер под контекст
        
        segmentedControl.addTarget(self, action: #selector(segmentAction), for: .valueChanged)
        
        setupViews()
    }
    
    private func setupViews(){
        view.addSubview(segmentedControl)
        setupConstraints()
    }
    
    
    
    private func setupConstraints() {
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
                       
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }

    @objc func segmentAction (sender: UISegmentedControl) {
        //printContent(sender.titleForSegment(at: sender.selectedSegmentIndex))
    }
}

