//
//  ViewController.swift
//  RecipePizza
//
//  Created by mac on 3/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cellId = "popularRecipePizzaCell"
    
    let headerImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "RectHeader"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let headerPizzaImageView: UIView = {
        let imageView = UIImageView(image: UIImage(named: "slide"))
        imageView.contentMode = .scaleAspectFill
        imageView.imageViewCorners()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
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
    
    let tableView: UITableView = {
        let table = UITableView()
        table.allowsSelection = false
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RecipePizzaTableViewCell.self, forCellReuseIdentifier: cellId)
        
        view.addSubview(headerImageView)
        view.addSubview(headerPizzaImageView)
        view.addSubview(menuButton)
        view.addSubview(titleHeader)
        view.addSubview(tableView)
        tableView.separatorStyle = .none
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
        
        tableView.setAnchor(top: headerPizzaImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 20, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
}
