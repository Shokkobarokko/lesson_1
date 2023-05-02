//
//  ViewController.swift
//  test_1
//
//  Created by Аветис Парсаданян on 02.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let rectangle = UIView()
    let gradient = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        configureRectangle()
        settupLayout()
        configureGradient()
 
    }
    
    private func configureRectangle() {
        rectangle.frame.size.width = 100
        rectangle.frame.size.height = 100
        rectangle.frame.origin.x = 100
        rectangle.frame.origin.y = 300
        rectangle.layer.shadowColor = UIColor.black.cgColor
        rectangle.layer.shadowOpacity = 0.3
        rectangle.layer.shadowOffset = CGSize(width: 5, height: 5)
        rectangle.layer.shadowRadius = 5
        rectangle.layer.cornerRadius = 20
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func settupLayout() {
        view.addSubview(rectangle)
        
        NSLayoutConstraint.activate([
            rectangle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rectangle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            rectangle.widthAnchor.constraint(equalToConstant: 100),
            rectangle.heightAnchor.constraint(equalToConstant: 100)
         
          
        ])
        
    }

    private func configureGradient() {
        gradient.colors = [UIColor.green.cgColor, UIColor.orange.cgColor, UIColor.blue.cgColor]
        gradient.startPoint = CGPoint(x: 0 , y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.frame = rectangle.bounds
        gradient.cornerRadius = 20
        rectangle.layer.addSublayer(gradient)
    }
}

