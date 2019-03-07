//
//  ViewController.swift
//  RecipePizza
//
//  Created by mac on 3/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let headerImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "RectHeader"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let headerPizzaImageView: UIView = {
        let imageView = UIImageView(image: UIImage(named: "slide"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.imageViewCorners()
        return imageView
    }()
    
    let menuButton: UIButton = {
        let button = UIButton(type: .system)
        let imageButton = UIImage(named: "menu")
        button.setImage(imageButton?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let titleHeader: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 25)
        label.text = "Рецепты пиццы"
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(headerImageView)
        view.addSubview(headerPizzaImageView)
        view.addSubview(menuButton)
        view.addSubview(titleHeader)
        ViewConstraints()
        
    }
    
    func ViewConstraints() {
        
        // headerImageView constraints
        headerImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        headerImageView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        headerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // headerPizzaImageView cotsntraints
        headerPizzaImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        headerPizzaImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        headerPizzaImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        // menuButton cotsntraints
        menuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        menuButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        menuButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        // titleHeader cotsntraints
        titleHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        titleHeader.topAnchor.constraint(equalTo: view.topAnchor, constant: 45).isActive = true
        titleHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}


extension UIImageView {
    func imageViewCorners() {
        layer.cornerRadius = 10
        layer.borderWidth = 1.0
        layer.masksToBounds = true
    }
}

