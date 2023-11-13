//
//  ViewController.swift
//  Label justaSid
//
//  Created by Антон Баландин on 12.11.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var longTextLabel: UILabel!
    
    let withoutConstraintsLabel = UILabel()
    
    let withConstraintsLabel: UILabel = {
        let label = UILabel()
        label.text = """
        kldhhvcabsvd;kvb;kDDBvlkjbADlkvjba;kJbdvk;jbAkjvb lkblkblkbn
        ЖфылосидФОЛижлоифжлисожлфоИжлофиВслиоф
        ;aksbdhvlhjabsfvbsljvbsdjlfkjklbds
        """
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .green
        
        label.shadowColor = .black
        label.shadowOffset = CGSize(width: 1, height: 1)
        
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 3
        label.layer.cornerRadius = 10
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(withoutConstraintsLabel)
        view.addSubview(withConstraintsLabel)
        
        setupLabelWithoutConstraints()
        
        setupConstraints()
    }


    private func setupLabelWithoutConstraints() {
        withoutConstraintsLabel.text = """
It is label from code without constraints
and some text qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq
"""
        withConstraintsLabel.font = UIFont.systemFont(ofSize: 30)
        
        withoutConstraintsLabel.frame = CGRect(x: 20, y: 200, width: 350, height: 150)
        withoutConstraintsLabel.numberOfLines = 0
        withoutConstraintsLabel.textAlignment = .center
        withoutConstraintsLabel.textColor = .red
        
        withoutConstraintsLabel.shadowColor = .black
        withoutConstraintsLabel.shadowOffset = CGSize(width: 1, height: 1)
        
        withoutConstraintsLabel.layer.cornerRadius = 10
        withoutConstraintsLabel.layer.borderColor = UIColor.black.cgColor
        withoutConstraintsLabel.layer.borderWidth = 3
    }
    
    private func setupConstraints() {
        withConstraintsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            withConstraintsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            withConstraintsLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            withConstraintsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            withConstraintsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }

}

