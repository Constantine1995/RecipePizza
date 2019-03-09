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
        return imageView
    }()
    
    let headerPizzaImageView: UIView = {
        let imageView = UIImageView(image: UIImage(named: "slide"))
        imageView.contentMode = .scaleAspectFill
        imageView.imageViewCorners()
        return imageView
    }()
    
    let menuButton: UIButton = {
        let button = UIButton(type: .system)
        let imageButton = UIImage(named: "menu")
        button.setImage(imageButton?.withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let titleHeader: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 25)
        label.text = "Рецепты пиццы"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    let tableView: UITableView = {
        let table = UITableView()
        table.allowsSelection = false
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
        tableView.separatorStyle = .none
    
        view.addSubview(headerImageView)
        view.addSubview(headerPizzaImageView)
        view.addSubview(menuButton)
        view.addSubview(titleHeader)
        view.addSubview(tableView)
     
        setupConstraints()
    }
    
    func setupConstraints() {
        
        // headerImageView consntraint
        headerImageView.setAnchor(top: nil, left: nil, right: nil, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0, width: view.frame.width, height: 150)
        
        headerPizzaImageView.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: nil, paddingTop: 100, paddingLeft: 30, paddingRight: -30, paddingBottom: 0, width: 100, height: 200)
        
        // menuButton consntraint
        menuButton.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: nil, bottom: nil, paddingTop: 40, paddingLeft: 15, paddingRight: 0, paddingBottom: 0, width: 40, height: 40)
        
        // titleHeader consntraint
        titleHeader.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: nil, bottom: nil, paddingTop: 45, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
        titleHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // tableView consntraint
        tableView.setAnchor(top: headerPizzaImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 20, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
}
