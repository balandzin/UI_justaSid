//
//  ViewController.swift
//  UIAlertController
//
//  Created by Антон Баландин on 17.10.23.
//

import UIKit

class ViewController: UIViewController {
    
    private var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("Show", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
    }
    
    func setupViews() {
        view.addSubview(button)
        setupConstraints()
    }
    
    
    func showButton() {
        let alertController = UIAlertController(title: "Error", message: "Ahtung", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        alertController.addTextField(configurationHandler: nil)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    private func setupConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}

private extension ViewController {
    @objc func tap() {
        showButton()
    }
}
