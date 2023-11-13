//
//  ViewController.swift
//  Traffic light
//
//  Created by Антон Баландин on 9.11.23.
//

import UIKit

class LightController: UIViewController {
    
    private var firstSectionView:LightSectionView = {
        let viewLight = LightSectionView()
        viewLight.backgroundColor = .red
        viewLight.layer.cornerRadius = 50
        return viewLight
    }()
    
    private var secondSectionView:LightSectionView = {
        let viewLight = LightSectionView()
        viewLight.backgroundColor = .orange
        viewLight.layer.cornerRadius = 50
        return viewLight
    }()
    
    private var thirdSectionView:LightSectionView = {
        let viewLight = LightSectionView()
        viewLight.backgroundColor = .green
        viewLight.layer.cornerRadius = 50
        return viewLight
    }()
    
    private var buttonChange: UIButton = {
        let buttonChange = UIButton()
        buttonChange.setTitle("Начать", for: .normal)
        buttonChange.backgroundColor = .blue
        return buttonChange
    }()
    
    var currentColor: Color = .red
    
    enum Color {
        case red
        case orange
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
        buttonChange.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    
    private func setupViews() {
        view.addSubview(firstSectionView)
        view.addSubview(secondSectionView)
        view.addSubview(thirdSectionView)
        view.addSubview(buttonChange)
        setupConstraints()
    }
    
    private func setupConstraints() {
        firstSectionView.translatesAutoresizingMaskIntoConstraints = false
        secondSectionView.translatesAutoresizingMaskIntoConstraints = false
        thirdSectionView.translatesAutoresizingMaskIntoConstraints = false
        buttonChange.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            firstSectionView.widthAnchor.constraint(equalToConstant: 100),
            firstSectionView.heightAnchor.constraint(equalToConstant: 100),
            firstSectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            firstSectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            secondSectionView.widthAnchor.constraint(equalToConstant: 100),
            secondSectionView.heightAnchor.constraint(equalToConstant: 100),
            secondSectionView.topAnchor.constraint(equalTo: firstSectionView.bottomAnchor, constant: 20),
            secondSectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            thirdSectionView.widthAnchor.constraint(equalToConstant: 100),
            thirdSectionView.heightAnchor.constraint(equalToConstant: 100),
            thirdSectionView.topAnchor.constraint(equalTo: secondSectionView.bottomAnchor, constant: 20),
            thirdSectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonChange.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonChange.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            buttonChange.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            buttonChange.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30)
        ])
    }
}
    
private extension LightController {
    @objc func tap() {
        buttonChange.setTitle("NEXT", for: .normal)
        firstSectionView.alpha = 0.3
        secondSectionView.alpha = 0.3
        thirdSectionView.alpha = 0.3
        
        if currentColor == .red {
            firstSectionView.alpha = 1
            currentColor = .orange
        } else if currentColor == .orange {
            secondSectionView.alpha = 1
            currentColor = .green
        } else {
            thirdSectionView.alpha = 1
            currentColor = .red
        }
    }
}
