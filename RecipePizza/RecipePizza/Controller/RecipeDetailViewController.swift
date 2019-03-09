//
//  RecipeDetailViewController.swift
//  RecipePizza
//
//  Created by mac on 3/9/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    let headerImageView: UIImageView = {
        let image = UIImageView()
        return image
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
        
        //        tableView.delegate = self
        //        tableView.dataSource = self
        //        tableView.register(RecipePizzaTableViewCell.self, forCellReuseIdentifier: PopularPizzaCellId)
        view.addSubview(headerImageView)
        setupConstraints()
    }
    
    func setupConstraints() {
        headerImageView.setAnchor(top: nil, left: nil, right: nil, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0, width: view.frame.width, height: 250)
    }
}
